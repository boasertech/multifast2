import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/actions.dart';

class QProductContainer extends StatelessWidget {
  final QProductModel qproduct;
  final bool isQuotation;
  const QProductContainer({super.key, required this.qproduct, required this.isQuotation});

  @override
  Widget build(BuildContext context) {
    final value = qproduct.entity;
    int quantity = 0;
    String quantityText = '';
    if (isQuotation) {
      quantity = getIt<NewQuotationController>().getQuantityProduct(qproduct.entity.productId.toInt());
      quantityText = quantity == 0 ? '+' : quantity.toString();
    }
    return GestureDetector(
      onTap: () {
        actionLoadDetailProduct(context, qproduct, isQuotation);
      },
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.cls7, width: 1.5))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppCoreImages.productDefaultDarkx141,
                    width: 47.w,
                    height: 69.h,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cod: ${value.productId}', style: AppTextStyle.lightStyle(color: AppColors.cls10)),
                      Text(value.name, style: AppTextStyle.defaultStyle()),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('S/ ${value.totalPrice.toStringAsFixed(2)}', style: AppTextStyle.cls2Style()),
                          if (isQuotation)
                            Container(
                                width: 25.w,
                                height: 25.w,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(6)),
                                child: Center(child: Text(quantityText, style: AppTextStyle.clsWhite(fontSize: 20))))
                        ],
                      ),
                      SizedBox(height: 6)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
