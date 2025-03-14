import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/quotation/widget/qproduct_quotation_container.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/popups/two_buttons_row.dart';
import 'package:multifast/src/views/widgets/popups/two_butttons_column.dart';
import 'package:multifast/src/views/widgets/switch_custom.dart';
import 'package:multifast/src/views/widgets/text_form_custom.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/formats.dart';

class NewQuotationScreen extends StatefulWidget {
  final bool isEdit;
  final bool onlySee;
  const NewQuotationScreen({super.key, required this.isEdit, this.onlySee = false});

  @override
  State<NewQuotationScreen> createState() => _NewQuotationScreenState();
}

class _NewQuotationScreenState extends State<NewQuotationScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ClientDataBloc>();
    final infoModel = bloc.infoModel;
    return BlocListener<ClientDataBloc, ClientDataState>(
      listener: (context, state) {
        if (state is LoadClientData) {
          context.push('/client_data/${widget.onlySee}');
        }
        if (state is SuccessSaveQuotation) {
          context.pop();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.cls1,
          leadingWidth: 0,
          leading: SizedBox.shrink(),
          titleSpacing: 10,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4, top: 4, right: 4),
                  child: Icon(Icons.close, color: Colors.white),
                ),
              ),
              SizedBox(width: 6),
              Text(
                  widget.onlySee
                      ? 'Cotización Registrada: N° ${bloc.numberController.text}'
                      : !widget.isEdit
                          ? 'Nueva Cotización'
                          : 'Editar Cotización',
                  style: AppTextStyle.clsWhite()),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: GestureDetector(
                  onTap: () {
                    context.read<ClientDataBloc>().add(EditClientData());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.cls4.withValues(alpha: 0.09),
                        border: Border.all(color: AppColors.cls4),
                        borderRadius: BorderRadius.circular(6.r)),
                    padding: EdgeInsets.only(left: 10.w, top: 6.h, bottom: 6.h, right: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Detalles', style: AppTextStyle.cls2Style()),
                            Text('${bloc.getFullnameView()} · ${infoModel.document}',
                                style: AppTextStyle.cls2Style(color: AppColors.cls4)),
                            if (infoModel.email != null && infoModel.email!.isNotEmpty)
                              Text(infoModel.email!, style: AppTextStyle.cls10Style()),
                            if (infoModel.location != null && infoModel.location!.isNotEmpty)
                              Text(infoModel.location!, style: AppTextStyle.cls10Style()),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset(
                            widget.onlySee ? AppIcons.rightArrow : AppIcons.editPen,
                            scale: 2,
                            color: AppColors.cls5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (!widget.onlySee)
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border, width: 0.6))),
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 240.w,
                        height: 20.h,
                        child: ValueListenableBuilder<TextEditingValue>(
                          valueListenable: context.read<QProductsBloc>().searchController,
                          builder: (context, value, child) {
                            return TextFormField(
                              controller: context.read<QProductsBloc>().searchController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  hintText: '¿Deseas agregar un producto?',
                                  hintStyle: AppTextStyle.lightStyle(fontSize: 14, fontW: FontWeight.w500),
                                  suffixIcon: value.text.isEmpty
                                      ? null
                                      : GestureDetector(
                                          onTap: () {
                                            context.read<QProductsBloc>().searchController.text = '';
                                            getIt<ProductRepository>().updateTempStrem();
                                          },
                                          child: Image.asset(AppIcons.cancel, scale: 2))),
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  context.push('/sales/search/true');
                                }
                              },
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          context.push('/sales/search/scan');
                        },
                        child: SizedBox(
                          width: 16.r,
                          height: 16.r,
                          child: Image.asset(AppIcons.scanner),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      GestureDetector(
                        onTap: () {
                          context.push('/sales/filter');
                        },
                        child: SizedBox(
                          width: 16.r,
                          height: 16.r,
                          child: Image.asset(AppIcons.filter),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Text('Productos', style: AppTextStyle.cls2Style()),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: ValueListenableBuilder(
                  valueListenable: getIt<NewQuotationController>().notifierList,
                  builder: (context, value, child) {
                    if (value.isNotEmpty) {
                      return Container(
                        constraints: BoxConstraints(minHeight: 300),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: value.length,
                          itemBuilder: (context, index) {
                            final item = value[index];
                            return QProductQuotationContainer(qproduct: item, index: index, onlySee: widget.onlySee);
                          },
                        ),
                      );
                    }
                    return SizedBox(
                      height: 300.h,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(opacity: 0.4, child: Image.asset(AppOptionsImages.salesQuotation, width: 148.w)),
                            SizedBox(height: 20.h),
                            Opacity(
                              opacity: 0.4,
                              child: SizedBox(
                                width: 200.w,
                                child: Text(
                                    'Aún no hay productos en esta cotización. Busca y selecciona los productos para empezar',
                                    style: AppTextStyle.cls10Style(fontSize: 15),
                                    textAlign: TextAlign.center),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(height: 10, color: AppColors.cls7),
              ValueListenableBuilder(
                valueListenable: getIt<NewQuotationController>().notifierList,
                builder: (context, value, child) {
                  return Column(
                    children: [
                      Container(
                        height: 250.h,
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Resumen', style: AppTextStyle.defaultStyle()),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text('Ítems', style: AppTextStyle.cls10Style()), Text('${value.length}')],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Moneda', style: AppTextStyle.cls10Style()),
                                  Text(bloc.infoModel.coinType!.id.toString())
                                ],
                              ),
                            ),
                            if (bloc.infoModel.coinType!.id.toString() != 'PEN')
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                                padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tipo de Cambio', style: AppTextStyle.cls10Style()),
                                    Text(formatAmount(bloc.infoModel.exchange ?? 0))
                                  ],
                                ),
                              ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('IGV', style: AppTextStyle.cls10Style()),
                                  Text('S/ ${formatAmount(getIt<NewQuotationController>().getIgv())}')
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sub-total', style: AppTextStyle.cls10Style()),
                                  Text('S/ ${formatAmount(getIt<NewQuotationController>().getSubTotal())}')
                                ],
                              ),
                            ),
                            ValueListenableBuilder(
                              valueListenable: getIt<NewQuotationController>().notifierDiscount,
                              builder: (context, value, child) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Aplicar Descuento',
                                            style: AppTextStyle.defaultStyle(fontW: FontWeight.w600)),
                                        Padding(
                                          padding: EdgeInsets.only(top: 6.h),
                                          child: buildSwtichCustom(
                                            context,
                                            value,
                                            (isSwitched) {
                                              getIt<NewQuotationController>().addDiscount(isSwitched);
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    if (!value) SizedBox.shrink(),
                                    if (value)
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 4.h),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            buildTextFormFieldCustom(
                                              context,
                                              bloc.discountPercentController,
                                              'Descuento (%)',
                                              140.w,
                                              prefixText: 'S/ ',
                                              enabled: !widget.onlySee,
                                              inputType: TextInputType.numberWithOptions(decimal: true),
                                            ),
                                            buildTextFormFieldCustom(
                                              context,
                                              bloc.discountAmountController,
                                              'Descuento (monto)',
                                              140.w,
                                              prefixText: 'S/ ',
                                              enabled: !widget.onlySee,
                                              inputType: TextInputType.numberWithOptions(decimal: true),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Final', style: AppTextStyle.defaultStyle(fontW: FontWeight.w600)),
                                Text(
                                  'S/ ${formatAmount(getIt<NewQuotationController>().getTotal())}',
                                  style: AppTextStyle.defaultStyle(fontW: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: ValueListenableBuilder(
          valueListenable: getIt<NewQuotationController>().notifierList,
          builder: (context, value, child) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: widget.onlySee
                  ? SizedBox(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Total:', style: AppTextStyle.defaultStyle()),
                              Text(
                                'S/ ${formatAmount(getIt<NewQuotationController>().getTotal())}',
                                style: AppTextStyle.cls5Style(fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 169.w,
                            child: buildAppButtonWithOutExpandedWithIcon(
                              context,
                              'Procesar',
                              AppIcons.rightArrow,
                              radiusCircular: 12,
                              action: () {
                                final title = '¿Registrar el Borrador N° ${bloc.infoModel.number}';
                                final subtitle =
                                    'Si registras este borrador, la acción no podrá revertirse. ¿Deseas continuar?';
                                showTwoButtonsRow(
                                  context,
                                  title,
                                  subtitle,
                                  ButtonModel(
                                    'Continuar',
                                    () {
                                      context.read<ClientDataBloc>().add(RegisterQuotationEvent(false));
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  ButtonModel(
                                    'Cancelar',
                                    () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : buildAppButtonRow(
                      context,
                      'Total: S/ ${formatAmount(getIt<NewQuotationController>().getTotal())}',
                      !widget.isEdit ? 'Guardar' : 'Actualizar',
                      radiusCircular: 12,
                      action: () {
                        String? validity = bloc.isValidityDataCorrect();
                        if (value.isEmpty || validity != null) {
                          Fluttertoast.showToast(
                            msg: validity ?? "No ha seleccionado ningún producto",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          if (validity != null) {
                            context.read<ClientDataBloc>().add(EditClientData());
                          } else if (value.isEmpty) {
                            context.push('/sales/search/true');
                          }
                          return;
                        }
                        if (widget.isEdit) {
                          context.read<ClientDataBloc>().add(RegisterQuotationEvent(true));
                          return;
                        }
                        final title = '¿Qué acción deseas realizar con esta cotización?';
                        final subtitle = 'Elige una de las opciones disponibles para continuar con el procesamiento.';
                        showSaveQuotation(
                          context,
                          title,
                          subtitle,
                          ButtonModel(
                            'Guardar Como Borrador',
                            () {
                              context.read<ClientDataBloc>().add(RegisterQuotationEvent(false));
                              Navigator.of(context).pop();
                            },
                          ),
                          ButtonModel(
                            'Registrar Cotización',
                            () {},
                          ),
                        );
                      },
                    ),
            );
          },
        ),
      ),
    );
  }
}
