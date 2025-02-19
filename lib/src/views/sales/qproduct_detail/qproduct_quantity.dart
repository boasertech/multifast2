import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/controllers/product_controller.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class QProductQuantity extends StatefulWidget {
  final ProductController productController;
  const QProductQuantity({super.key, required this.productController});

  @override
  State<QProductQuantity> createState() => _QProductQuantityState();
}

class _QProductQuantityState extends State<QProductQuantity> {
  final _quantityController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _quantityController.text = widget.productController.quantity.toString();
  }

  @override
  Widget build(BuildContext context) {
    int count = int.parse(_quantityController.text);
    return Container(
      width: 226.w,
      height: 217.h,
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 35.h, bottom: 25.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Ingrese la cantidad de ítems', style: AppTextStyle.cls3Style(fontSize: 18, fontW: FontWeight.w600)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  if (count >= 1) {
                    setState(() {
                      count--;
                      _quantityController.text = count.toString();
                    });
                  }
                },
                child: Container(
                  width: 35.w,
                  height: 35.w,
                  decoration: BoxDecoration(
                      color: count == 0 ? Colors.white : AppColors.cls7, borderRadius: BorderRadius.circular(5.r)),
                  child: count == 0
                      ? null
                      : Icon(count == 1 ? Icons.delete_outlined : Icons.remove, color: AppColors.cls3),
                ),
              ),
              SizedBox(
                width: 79.w,
                child: TextFormField(
                  controller: _quantityController,
                  style: AppTextStyle.cls3Style(fontSize: 21, fontW: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                    _quantityController.text = count.toString();
                  });
                },
                child: Container(
                  width: 35.w,
                  height: 35.w,
                  decoration: BoxDecoration(color: AppColors.cls7, borderRadius: BorderRadius.circular(5.r)),
                  child: Icon(Icons.add, color: AppColors.cls3),
                ),
              ),
            ],
          ),
          buildAppButtonWithOutExpanded(
            context,
            'Guardar',
            action: () {
              widget.productController.initQuantity(count);
              context.pop();
            },
          )
        ],
      ),
    );
  }
}

showQProductQuantity(BuildContext context, ProductController productController) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        child: QProductQuantity(productController: productController),
      );
    },
  );
}
