import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/controllers/product_controller.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/src/views/sales/qproduct_detail/qproduct_quantity.dart';
import 'package:multifast/src/views/sales/search/camera_controller.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/formats.dart';

class QProductScreen extends StatefulWidget {
  final QProductModel qproduct;
  final bool isScan;
  final bool isQuotation;
  const QProductScreen({super.key, required this.qproduct, required this.isScan, required this.isQuotation});

  @override
  State<QProductScreen> createState() => _QProductScreenState();
}

class _QProductScreenState extends State<QProductScreen> {
  ProductController productController = getIt<ProductController>();
  int _optionSelected = 1;
  int quantity = 0;

  @override
  void initState() {
    super.initState();
    productController
        .initQuantity(getIt<NewQuotationController>().getQuantityProduct(widget.qproduct.entity.productId.toInt()));
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.qproduct.entity;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          if (widget.isScan) {
            context.read<CameraControllerProvider>().startCamera();
          }
          context.pop();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.cls1,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              BackWidget(
                  color: Colors.white,
                  onTap: () {
                    context.read<CameraControllerProvider>().startCamera();
                    context.pop();
                  }),
              Text('Ver Producto', style: AppTextStyle.clsWhite(fontSize: 16))
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.h),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Container(
                  decoration: BoxDecoration(color: AppColors.cls9, borderRadius: BorderRadius.circular(7.r)),
                  child: Center(
                    child: SizedBox(
                      width: 76.w,
                      height: 94.w,
                      child: Image.asset(AppCoreImages.logoIconx228, color: AppColors.cls10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 12 + 10.w, right: 12 + 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        decoration: BoxDecoration(color: AppColors.cls4_2, borderRadius: BorderRadius.circular(5.r)),
                        child: Text(
                          model.category,
                          style: AppTextStyle.cls5Style(),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Código: ', style: AppTextStyle.cls10Style()),
                            TextSpan(text: model.productId.toString(), style: AppTextStyle.defaultStyle()),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(model.name, style: AppTextStyle.defaultStyle(fontW: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 12 + 10.w, right: 12 + 10.w, top: 20),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.cls7))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOptionDetail(1, 'Precios/Stock'),
                  _buildOptionDetail(2, 'Detalles'),
                  _buildOptionDetail(3, 'Promociones'),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.only(left: 12 + 10.w, right: 12 + 10.w, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_optionSelected == 1) ...[
                      _buildDescription('Precio Unitario:', model.totalPrice.toStringAsFixed(2), isMain: true),
                      //_buildDescription('Precio por mayor:', model.totalPrice.toStringAsFixed(2)),
                      SizedBox(height: 10),
                      BlocBuilder<QProductDetailBloc, QProductDetailState>(
                        builder: (context, state) {
                          double sum = 0;
                          if (state is QProductDetailLoad) {
                            final listStorages = state.detail.detail!.storages.where((s) => s.quantity > 0).toList();
                            for (var storage in listStorages) {
                              sum += storage.quantity;
                            }
                            if (sum < 0) {
                              sum = 0;
                            }
                            return Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Stock (${model.unitOfMeasure})',
                                          style: AppTextStyle.cls2Style(fontSize: 16)),
                                      Text(sum.toStringAsFixed(2),
                                          style: AppTextStyle.cls9Style(fontW: FontWeight.w700)),
                                    ],
                                  ),
                                  if (sum > 0)
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 12),
                                        child: ListView.builder(
                                          itemCount: listStorages.length,
                                          itemBuilder: (context, index) {
                                            final storage = listStorages[index];
                                            String stock = storage.quantity <= 0
                                                ? 'sin stock'
                                                : storage.quantity.toStringAsFixed(2);
                                            if (storage.branchId == getIt<UserRepository>().user.branch.branchId) {
                                              return Container(
                                                height: 26.h,
                                                decoration: BoxDecoration(
                                                    color: AppColors.cls4_2, borderRadius: BorderRadius.circular(7.r)),
                                                child: Row(
                                                  children: [
                                                    Text(storage.name, style: AppTextStyle.cls10Style(fontSize: 14)),
                                                    SizedBox(width: 5),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                      decoration: BoxDecoration(
                                                          color: AppColors.cls5,
                                                          borderRadius: BorderRadius.circular(8)),
                                                      child: Text('Actual', style: AppTextStyle.clsWhite(fontSize: 12)),
                                                    ),
                                                    Spacer(),
                                                    Text(stock, style: AppTextStyle.cls5Style(fontSize: 14))
                                                  ],
                                                ),
                                              );
                                            }
                                            return SizedBox(
                                              height: 26.h,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(storage.name, style: AppTextStyle.cls10Style(fontSize: 14)),
                                                  Text(stock, style: AppTextStyle.cls2Style(fontSize: 14))
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            );
                          }
                          return SizedBox.shrink();
                        },
                      ),
                    ] else if (_optionSelected == 2) ...[
                      _buildTitle('Identificación del Producto'),
                      _buildSubTitle('Código', model.productId.toString()),
                      _buildSubTitle('Código de barras', model.barCode.toString()),
                      _buildSubTitle('Nombre completo', model.name),
                      Divider(color: AppColors.border),
                      _buildTitle('Clasificación'),
                      Row(children: [
                        Text('Categoría', style: AppTextStyle.cls3Style()),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          decoration: BoxDecoration(color: AppColors.cls4_2, borderRadius: BorderRadius.circular(6)),
                          child: Text(model.category, style: AppTextStyle.cls5Style()),
                        )
                      ]),
                      Divider(color: AppColors.border),
                      _buildTitle('Marca/Proveedor'),
                      Divider(color: AppColors.border),
                      _buildTitle('Atributos Adicionales')
                    ]
                  ],
                ),
              ),
            ),
            if (widget.isQuotation)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                decoration: BoxDecoration(border: Border(top: BorderSide(color: AppColors.border, width: 0.6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: getIt<NewQuotationController>().notifierList,
                      builder: (context, value, child) {
                        int count = value.length;
                        String countPrefix = count == 1 ? 'ítem' : 'ítems';
                        double total = getIt<NewQuotationController>().getTotal();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('$count $countPrefix:', style: AppTextStyle.cls3Style()),
                            Text('S/ ${formatAmount(total)}',
                                style: AppTextStyle.cls5Style(fontSize: 14, fontW: FontWeight.bold))
                          ],
                        );
                      },
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child: Image.asset(
                              AppIcons.list,
                              color: AppColors.cls3,
                              scale: 1,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: AppColors.cls5,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: ValueListenableBuilder(
                              valueListenable: getIt<NewQuotationController>().notifierList,
                              builder: (context, value, child) {
                                return Text(
                                  value.length.toString(),
                                  style: AppTextStyle.clsWhite(fontSize: 11),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 151.w,
                      height: 40.h,
                      decoration: BoxDecoration(color: AppColors.cls5, borderRadius: BorderRadius.circular(14.r)),
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (productController.quantity > 0) {
                                productController.removeQuantity();
                                getIt<NewQuotationController>().setQProductQuantity(
                                    QProductQuotation(widget.qproduct, quantity: productController.quantity));
                              }
                            },
                            child:
                                Container(padding: EdgeInsets.all(8.w), child: Icon(Icons.remove, color: Colors.white)),
                          ),
                          GestureDetector(
                            onTap: () {
                              showQProductQuantity(context, productController, widget.qproduct);
                            },
                            child: ValueListenableBuilder(
                              valueListenable: productController.notifierQuantity,
                              builder: (context, value, child) {
                                return Text(value.toString(), style: AppTextStyle.clsWhite(fontSize: 18));
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              productController.addQuantity();
                              getIt<NewQuotationController>().setQProductQuantity(
                                  QProductQuotation(widget.qproduct, quantity: productController.quantity));
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.w),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Row(children: [Text(text, style: AppTextStyle.cls2Style())]);
  }

  Widget _buildSubTitle(String title, String description) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text('$title  ', style: AppTextStyle.cls3Style()),
      Flexible(
          child: Text(description,
              style: AppTextStyle.cls9Style(), overflow: TextOverflow.ellipsis, softWrap: false, maxLines: 2)),
    ]);
  }

  Widget _buildDescription(String text, String detail, {bool isMain = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppTextStyle.cls10Style()),
        Text(
          'S/ $detail',
          style: isMain
              ? AppTextStyle.cls5Style(fontSize: 15, fontW: FontWeight.bold)
              : AppTextStyle.cls2Style(fontSize: 13),
        )
      ],
    );
  }

  Widget _buildOptionDetail(int index, String option) {
    bool isSelected = (index == _optionSelected);
    return GestureDetector(
      onTap: () {
        setState(() {
          _optionSelected = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: isSelected ? BorderSide(color: AppColors.cls5, width: 2) : BorderSide.none),
        ),
        child: Text(
          option,
          style: isSelected ? AppTextStyle.cls5Style(fontSize: 14) : AppTextStyle.defaultStyle(fontSize: 14),
        ),
      ),
    );
  }
}
