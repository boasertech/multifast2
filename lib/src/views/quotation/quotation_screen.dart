import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/local_repositories/quotation_sqlite_repository.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/quotation_sqlite_model.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/quotation/widget/delete_modal.dart';
import 'package:multifast/src/views/quotation/widget/draft_container.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/formats.dart';

class QuotationScreen extends StatefulWidget {
  const QuotationScreen({super.key});

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
  bool isSelection = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClientDataBloc, ClientDataState>(
      listener: (context, state) {
        if (state is NewQuotationState) {
          context.read<QProductsBloc>().searchController.text = '';
          context.push('/quotation/create/${state.isEdit}/${state.onlySee}');
        }
      },
      child: ValueListenableBuilder<List<AbsModel>>(
        valueListenable: getIt<QuotationSqliteRepository>().notifierList,
        builder: (context, value, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: AppColors.cls1,
              leading: SizedBox.shrink(),
              leadingWidth: 0,
              titleSpacing: 0,
              title: (!isSelection)
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          BackWidget(color: Colors.white),
                          Text("Cotizaciones", style: TextStyle(fontSize: 18, color: Colors.white)),
                          Spacer(),
                          Image.asset(
                            AppIcons.restart,
                            scale: 1.8,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 88.w,
                            height: 25.h,
                            child: buildAppButtonWithOutExpanded(
                              context,
                              "Registradas",
                              radiusCircular: 6.r,
                              padding: 0,
                              action: () {},
                            ),
                          )
                        ],
                      ),
                    )
                  : Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSelection = false;
                                getIt<QuotationSqliteRepository>().selectAllItems(isSelect: false);
                              });
                            },
                            icon: Image.asset(AppIcons.cancel, color: Colors.white, scale: 1.4)),
                        Text(_convertText(getIt<QuotationSqliteRepository>().countSelected()),
                            style: TextStyle(fontSize: 15, color: Colors.white)),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            getIt<QuotationSqliteRepository>().selectAllItems();
                          },
                          icon: Image.asset(
                            AppIcons.selectAll,
                            scale: 1.6,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
            ),
            body: Column(
              children: [
                SizedBox(height: 10),
                SizedBox(
                  child: TextFormField(
                    style: AppTextStyle.cls2Style(),
                    decoration: InputDecoration(
                        hintText: "¿Qué cotización necesitas?",
                        hintStyle: AppTextStyle.cls9Style(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border, width: 0.7),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border, width: 0.7),
                        ),
                        suffixIcon: Image.asset(AppIcons.filter, scale: 3.5),
                        prefix: SizedBox(width: 15)),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: DraftContainer(),
                          ),
                        );
                      }
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: _buildQuotationContainer(context, value[index - 1] as QuotationSqliteModel, value),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                if (!isSelection) ...[
                  SizedBox(
                    height: 40.h,
                    width: 280.w,
                    child: buildAppButtonWithOutExpanded(
                      context,
                      "+ Nueva Cotización",
                      radiusCircular: 12.r,
                      action: () async {
                        context.read<ClientDataBloc>().add(NewQuotationEvent());
                      },
                    ),
                  ),
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          int count = getIt<QuotationSqliteRepository>().countSelected();
                          String title = '';
                          String subTitle = '';
                          if (count < 1) {
                            Fluttertoast.showToast(
                              msg: "Debe seleccionar al menos una cotización",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.black54,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                            return;
                          } else if (count == 1) {
                            int number =
                                getIt<QuotationSqliteRepository>().getOnlyQuotationSelected().entity.numberQuotation;
                            title = 'Eliminar Borrador N° $number';
                            subTitle =
                                'Esta acción es irreversible. Una vez eliminada, no podrás recuperar la cotización. ¿Estás seguro de continuar?';
                          } else {
                            title = 'Eliminar $count Borradores';
                            subTitle =
                                'Esta acción es irreversible. Una vez eliminados, no podrás recuperarlos. ¿Estás seguro de continuar?';
                          }
                          showDeleteModal(context, title, subTitle);
                        },
                        icon: Column(
                          children: [
                            SizedBox(height: 25, child: Image.asset(AppIcons.trash, color: AppColors.cls9, scale: 2)),
                            Text('Eliminar', style: AppTextStyle.cls10Style(fontSize: 10))
                          ],
                        ),
                      ),
                      if (getIt<QuotationSqliteRepository>().countSelected() < 2) ...[
                        IconButton(
                          onPressed: () {
                            context
                                .read<ClientDataBloc>()
                                .add(EditQuotationEvent(getIt<QuotationSqliteRepository>().getOnlyQuotationSelected()));
                          },
                          icon: Column(
                            children: [
                              SizedBox(
                                  height: 25, child: Image.asset(AppIcons.editPen, color: AppColors.cls9, scale: 2)),
                              Text('Editar', style: AppTextStyle.cls10Style(fontSize: 10))
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Config.printDebug('xd');
                          },
                          icon: Column(
                            children: [
                              SizedBox(
                                  height: 25, child: Image.asset(AppIcons.duplicate, color: AppColors.cls9, scale: 2)),
                              Text('Duplicar', style: AppTextStyle.cls10Style(fontSize: 10))
                            ],
                          ),
                        ),
                      ]
                    ],
                  )
                ],
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }

  String _convertText(int count) {
    if (count == 1) {
      return '$count elemento seleccionado';
    }
    return '$count elementos seleccionados';
  }

  Timer? _timer;
  Widget _buildQuotationContainer(BuildContext context, QuotationSqliteModel model, List<AbsModel> newList) {
    final quotation = model.entity;
    return GestureDetector(
      onTap: () {
        if (isSelection) {
          getIt<QuotationSqliteRepository>().selectItem(quotation.quotationId!, newList);
        } else {
          context
              .read<ClientDataBloc>()
              .add(EditQuotationEvent(model, onlySee: true));
        }
      },
      onLongPressStart: (details) {
        if (!isSelection) {
          _timer = Timer(
            Duration(seconds: 2),
            () {
              setState(() {
                isSelection = true;
                getIt<QuotationSqliteRepository>().selectItem(quotation.quotationId!, newList);
              });
            },
          );
        }
      },
      onLongPressEnd: (details) {
        _timer?.cancel();
      },
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
        padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
        child: Row(
          children: [
            if (isSelection)
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  width: 14.r,
                  height: 14.r,
                  decoration: BoxDecoration(
                      color: model.isSelected ? AppColors.cls5_1 : Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: model.isSelected ? null : Border.all(color: AppColors.cls9)),
                  child: Icon(Icons.check, color: Colors.white, size: 12.r),
                ),
              ),
            Text('${quotation.numberQuotation}.', style: AppTextStyle.cls9Style()),
            SizedBox(width: 5.w),
            Column(
              children: [
                Container(
                  width: 181.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text('${quotation.clientName}', style: AppTextStyle.defaultStyle(fontSize: 13)),
                ),
                Container(
                  width: 181.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: AppColors.border),
                  ),
                  child: Text('${model.getDate()}\nVend.: ${quotation.sellerName}',
                      style: AppTextStyle.cls2Style(fontSize: 13, color: AppColors.cls9, fontW: FontWeight.w500)),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Container(
                  width: 68.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: AppColors.border),
                  ),
                  child: Text('Productos: ${getQuantityProducts(model.details.length)}',
                      style: AppTextStyle.cls2Style(fontSize: 12, color: Color(0XFF5A5A59))),
                ),
                Container(
                  width: 68.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: AppColors.border),
                  ),
                  child: Text('S/ ${formatAmount(model.getTotal())}',
                      style: AppTextStyle.cls2Style(fontSize: 15, color: Color(0xFFF48E19))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String getQuantityProducts(int quantity) {
    if (quantity < 10) {
      return "0${quantity.toString()}";
    }
    return quantity.toString();
  }
}
