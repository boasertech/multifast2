import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/src/views/quotation/widget/qproduct_quotation_container.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/text_form_custom.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/const.dart';

class DetailQProductQuotation extends StatefulWidget {
  final QProductQuotation qproduct;
  final bool isEdit;
  const DetailQProductQuotation({super.key, required this.qproduct, required this.isEdit});

  @override
  State<DetailQProductQuotation> createState() => _DetailQProductQuotationState();
}

class _DetailQProductQuotationState extends State<DetailQProductQuotation> {
  final TextEditingController _originalPriceController = TextEditingController();
  final TextEditingController _newPriceController = TextEditingController();
  final TextEditingController _discountPercentController = TextEditingController();
  final TextEditingController _discountAmountController = TextEditingController();
  final TextEditingController _discountGeneralPercentController = TextEditingController();
  final TextEditingController _discountGeneralAmountController = TextEditingController();
  final TextEditingController _observationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _originalPriceController.text = widget.qproduct.qproduct.entity.totalPrice.toStringAsFixed(2);
    _newPriceController.text = widget.qproduct.getNewPrice().toStringAsFixed(2);
    _discountPercentController.text = widget.qproduct.getUnitDiscountPercent().toStringAsFixed(2);
    _discountAmountController.text = widget.qproduct.getUnitDiscountAmount().toStringAsFixed(2);
    _discountGeneralPercentController.text = widget.qproduct.getGeneralDiscountPercent().toStringAsFixed(2);
    _discountGeneralAmountController.text = widget.qproduct.getGeneralDiscountAmount().toStringAsFixed(2);
    _observationController.text = widget.qproduct.observation ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: SizedBox.shrink(),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Icon(Icons.close),
            ),
            SizedBox(width: 5),
            Text('Ajustar Detalles del Producto', style: AppTextStyle.cls3Style(fontSize: 15, fontW: FontWeight.w600))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(color: AppColors.cls4_2, borderRadius: BorderRadius.circular(8.r)),
                        child: QProductQuotationContainer(qproduct: widget.qproduct, color: AppColors.cls4_2)),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 7.h),
                      child: Text('Precio Unitario',
                          style: AppTextStyle.defaultStyle(fontW: FontWeight.w600, fontSize: 15)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTextFormFieldCustom(
                          context,
                          _originalPriceController,
                          'Precio original',
                          137.w,
                          prefixText: 'S/ ',
                          enabled: false,
                        ),
                        buildTextFormFieldCustom(
                          context,
                          _newPriceController,
                          'Precio nuevo',
                          137.w,
                          prefixText: 'S/ ',
                          onChanged: (value) {
                            setState(() {
                              double newprice = double.tryParse(value) ?? 0;
                              _discountPercentController.text =
                                  widget.qproduct.getUnitDiscountPercent(textPrice: newprice).toStringAsFixed(2);
                              _discountAmountController.text =
                                  widget.qproduct.getUnitDiscountAmount(textPrice: newprice).toStringAsFixed(2);
                              _discountGeneralPercentController.text =
                                  widget.qproduct.getGeneralDiscountPercent(textPrice: newprice).toStringAsFixed(2);
                              _discountGeneralAmountController.text =
                                  widget.qproduct.getGeneralDiscountAmount(textPrice: newprice).toStringAsFixed(2);
                            });
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 7.h),
                      child: Text('Descuento Unitario',
                          style: AppTextStyle.defaultStyle(fontW: FontWeight.w600, fontSize: 15)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTextFormFieldCustom(
                          context,
                          _discountPercentController,
                          'Descuento (%)',
                          137.w,
                          onChanged: (value) {
                            double discountAmount = double.tryParse(value) ?? 0;
                            double newUnitPrice = widget.qproduct.getNewPriceEdit(1, discountAmount);
                            _newPriceController.text = newUnitPrice.toStringAsFixed(2);
                            _discountAmountController.text =
                                widget.qproduct.getUnitDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralPercentController.text =
                                widget.qproduct.getGeneralDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralAmountController.text =
                                widget.qproduct.getGeneralDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                          },
                        ),
                        buildTextFormFieldCustom(
                          context,
                          _discountAmountController,
                          'Descuento (monto)',
                          137.w,
                          prefixText: 'S/ ',
                          onChanged: (value) {
                            double discountAmount = double.tryParse(value) ?? 0;
                            double newUnitPrice = widget.qproduct.getNewPriceEdit(2, discountAmount);
                            _newPriceController.text = newUnitPrice.toStringAsFixed(2);
                            _discountPercentController.text =
                                widget.qproduct.getUnitDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralPercentController.text =
                                widget.qproduct.getGeneralDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralAmountController.text =
                                widget.qproduct.getGeneralDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 7.h),
                      child: Text('Descuento General',
                          style: AppTextStyle.defaultStyle(fontW: FontWeight.w600, fontSize: 15)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTextFormFieldCustom(
                          context,
                          _discountGeneralPercentController,
                          'Descuento (%)',
                          137.w,
                          onChanged: (value) {
                            double discountAmount = double.tryParse(value) ?? 0;
                            double newUnitPrice = widget.qproduct.getNewPriceEdit(3, discountAmount);
                            _newPriceController.text = newUnitPrice.toStringAsFixed(2);
                            _discountPercentController.text =
                                widget.qproduct.getUnitDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountAmountController.text =
                                widget.qproduct.getUnitDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralAmountController.text =
                                widget.qproduct.getGeneralDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                          },
                        ),
                        buildTextFormFieldCustom(
                          context,
                          _discountGeneralAmountController,
                          'Descuento (monto)',
                          137.w,
                          prefixText: 'S/ ',
                          onChanged: (value) {
                            double discountAmount = double.tryParse(value) ?? 0;
                            double newUnitPrice = widget.qproduct.getNewPriceEdit(4, discountAmount);
                            _newPriceController.text = newUnitPrice.toStringAsFixed(2);
                            _discountPercentController.text =
                                widget.qproduct.getUnitDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountAmountController.text =
                                widget.qproduct.getUnitDiscountAmount(textPrice: newUnitPrice).toStringAsFixed(2);
                            _discountGeneralPercentController.text =
                                widget.qproduct.getGeneralDiscountPercent(textPrice: newUnitPrice).toStringAsFixed(2);
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 7.h),
                      child: Text('Otros Detalles',
                          style: AppTextStyle.defaultStyle(fontW: FontWeight.w600, fontSize: 15)),
                    ),
                    DrowdownCustom(
                      hintText: 'Tipos de Operación',
                      list: constAffectation,
                      constSelected: widget.qproduct.getTypeTaxSelectd(),
                      action: (value) {
                        widget.qproduct.typeTaxId = value!.id ?? 10;
                      },
                    ),
                    SizedBox(height: 10.h),
                    buildTextFormFieldCustom(context, _observationController, 'Observación', 290.w, height: 40),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 140.w,
                    child: buildAppButtonWithOutExpanded(
                      context,
                      'Guardar',
                      action: () {
                        double priceNew = double.tryParse(_newPriceController.text) ?? 0;
                        widget.qproduct.newPrice = priceNew;
                        widget.qproduct.observation = _observationController.text;
                        context.pop();
                      },
                    )),
                SizedBox(
                    width: 140.w,
                    child: buildAppButtonWithOutExpanded(
                      context,
                      'Cancelar',
                      isCancel: true,
                      action: () {
                        context.pop();
                      },
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
