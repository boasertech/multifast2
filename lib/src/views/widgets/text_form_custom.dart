import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_form_style.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/const.dart';

class DrowdownCustom extends StatefulWidget {
  final String hintText;
  final ConstValue? constSelected;
  final List<ConstValue> list;
  final Function(ConstValue?)? action;
  final double width;
  const DrowdownCustom({super.key, required this.hintText, required this.list, this.constSelected, this.action, this.width = 280});

  @override
  State<DrowdownCustom> createState() => _DrowdownCustomState();
}

class _DrowdownCustomState extends State<DrowdownCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15.h,
            padding: EdgeInsets.only(left: 12.w, top: 4.w),
            child: Text(
              widget.hintText,
              style: TextStyle(fontSize: 10),
            ),
          ),
          Container(
            width: widget.width.w,
            height: 25.h,
            padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
            child: DropdownButtonFormField<ConstValue>(
              value: widget.constSelected,
              style: AppTextStyle.cls2Style(),
              decoration: AppTextFormStyle.withOutBorders(),
              icon: Image.asset(AppIcons.downArrow, scale: 1.8),
              items: widget.list.map((ConstValue value) {
                return DropdownMenuItem<ConstValue>(
                  value: value,
                  child: Text(value.name),
                );
              }).toList(),
              onChanged: widget.action,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTextFormFieldCustom(BuildContext context, TextEditingController controller, String hintText, double width,
    {double height = 25,
    String? prefixText,
    bool enabled = true,
    Function(String)? onChanged,
    VoidCallback? cleancontroller}) {
  return Container(
    decoration: BoxDecoration(
        color: enabled ? Colors.white : AppColors.locked,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(6.r)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 15.h,
          padding: EdgeInsets.only(left: 12.w, top: 4.w),
          child: Text(
            hintText,
            style: AppTextStyle.cls9Style(fontSize: 10),
          ),
        ),
        SizedBox(
          width: width - 2.w,
          height: height.h,
          child: Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w),
            child: TextFormField(
                maxLines: null,
                expands: false,
                controller: controller,
                enabled: enabled,
                style: AppTextStyle.cls2Style(),
                onChanged: onChanged,
                decoration: AppTextFormStyle.withOutBorders().copyWith(
                  prefixText: prefixText,
                  /*suffixIcon: GestureDetector(
                        onTap: () {
                          if (cleancontroller != null) {
                            cleancontroller();
                          }
                        },
                        child: Icon(Icons.close))*/
                )),
          ),
        ),
      ],
    ),
  );
}
