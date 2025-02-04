import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class QProductContainer extends StatelessWidget {
  final QProductModel qproduct;
  const QProductContainer({super.key, required this.qproduct});

  @override
  Widget build(BuildContext context) {
    final value = qproduct.entity;
    return GestureDetector(
      onTap: () {
        int branchId = getIt<BranchesRepository>().branchSelected!.entity.branchId.toInt();
        final request = QProductDetailRequest()
          ..branchId = branchId
          ..productId = value.productId;
        context.read<QProductDetailBloc>().add(LoadQProductDetailEvent(request, qproduct));
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
                      Text('S/ ${value.totalPrice.toStringAsFixed(2)}', style: AppTextStyle.cls2Style()),
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
