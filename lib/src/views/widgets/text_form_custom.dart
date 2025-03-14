import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/client.pb.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
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
  const DrowdownCustom(
      {super.key, required this.hintText, required this.list, this.constSelected, this.action, this.width = 280});

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

Widget buildTextFormFieldCustom(
  BuildContext context,
  TextEditingController controller,
  String hintText,
  double width, {
  double height = 25,
  String? prefixText,
  bool enabled = true,
  String? sufixIcon,
  bool isDni = false,
  Function(String)? onChanged,
  VoidCallback? cleancontroller,
  TextInputType inputType = TextInputType.text, // Nuevo parámetro
  List<TextInputFormatter>? inputFormatters,
}) {
  List<TextInputFormatter> formatters = inputFormatters ?? [];

  if (inputFormatters == null) {
    if (inputType == TextInputType.number) {
      formatters.add(FilteringTextInputFormatter.digitsOnly);
    } else if (inputType == TextInputType.numberWithOptions(decimal: true)) {
      formatters.add(FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')));
    } else if (inputType == TextInputType.emailAddress) {
      formatters.add(FilteringTextInputFormatter.deny(RegExp(r'\s')));
    } else if (isDni) {
      formatters.add(FilteringTextInputFormatter.digitsOnly);
    }
  }

  double widthNew = (sufixIcon != null)
      ? width - 26.w
      : (isDni)
          ? width - 42.w
          : width - 2.w;
  return Container(
    decoration: BoxDecoration(
        color: enabled ? Colors.white : AppColors.locked,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(6.r)),
    child: Row(
      children: [
        Column(
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
            Row(
              children: [
                SizedBox(
                  width: widthNew,
                  height: height.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: TextFormField(
                      maxLines: null,
                      expands: false,
                      controller: controller,
                      enabled: enabled,
                      keyboardType: inputType,
                      inputFormatters: formatters,
                      style: AppTextStyle.cls2Style(),
                      onChanged: onChanged,
                      decoration: AppTextFormStyle.withOutBorders().copyWith(
                        prefixText: prefixText,
                      ),
                    ),
                  ),
                ),
                if (sufixIcon != null) Image.asset(sufixIcon, scale: 2),
              ],
            ),
          ],
        ),
        if (isDni)
          GestureDetector(
            onTap: () {
              final bloc = context.read<ClientDataBloc>();
              if (bloc.documentController.text.length == bloc.documentType.length) {
                final request = DocumentRequest()
                  ..codeDocument = context.read<ClientDataBloc>().documentType.id.toString()
                  ..document = context.read<ClientDataBloc>().documentController.text
                  ..companyRuc = getIt<UserRepository>().user.company.companyRuc;
                context.read<ClientDataBloc>().add(ConsultDocumentEvent(request));
              } else {
                Fluttertoast.showToast(
                  msg: "El ${bloc.documentType.name} debe tener ${bloc.documentType.length} dígitos",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.black54,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              }
            },
            child: Container(
              width: 35.w,
              height: 32.w,
              decoration: BoxDecoration(
                  color: AppColors.cls4_3,
                  border: Border.all(color: AppColors.cls5),
                  borderRadius: BorderRadius.circular(6.r)),
              child: Image.asset(AppIcons.search, color: AppColors.cls5, scale: 1.4),
            ),
          )
      ],
    ),
  );
}
