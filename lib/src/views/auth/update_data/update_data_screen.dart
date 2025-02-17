import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/user.pb.dart';
import 'package:multifast/src/views/auth/update_data/bloc/update_data_bloc.dart';
import 'package:multifast/src/views/auth/update_data/update_data_success_container.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_form_style.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/const.dart';
import 'package:multifast/utils/date_format.dart';
import 'package:multifast/utils/validator_form.dart';

class UpdateDataScreen extends StatefulWidget {
  const UpdateDataScreen({super.key, required this.userId});

  final int userId;

  @override
  State<UpdateDataScreen> createState() => _UpdateDataScreenState();
}

class _UpdateDataScreenState extends State<UpdateDataScreen> with ValidatorForm {
  final int widthPadding = 20;
  final _formKey = GlobalKey<FormState>();
  ConstValue? documentType;
  ConstValue? genderType;
  ConstValue? positionType;
  final _documentController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      if (documentType == null || genderType == null || positionType == null) {
        return;
      }
      final request = UserUpdateRequest()
        ..userId = widget.userId
        ..documentTypeId = int.parse(documentType!.id.toString())
        ..document = _documentController.text
        ..fullname = _fullnameController.text
        ..birthDate = _birthDateController.text
        ..gender = genderType!.id
        ..email = _emailController.text
        ..phone = _phoneController.text
        ..positionId = int.parse(positionType!.id.toString());
      context.read<UpdateDataBloc>().add(UpdateUserEvent(request));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateDataBloc, UpdateDataState>(
      listener: (context, state) {
        if (state is UpdateDataSuccess) {
          _showBottomSheet(context);
        } else if (state is UpdateDataError) {}
      },
      child: Scaffold(
        backgroundColor: AppColors.cls1,
        appBar: AppBar(
          backgroundColor: AppColors.cls1,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.mainLogo, scale: 2),
                  Column(
                    children: [
                      SizedBox(height: 16),
                      Text('v${Config.version}', style: AppTextStyle.clsWhiteStyle()),
                    ],
                  )
                ],
              ),
            ],
          ),
          leadingWidth: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthPadding.w),
                  child: Text(
                    'Actualiza tu información',
                    style: AppTextStyle.clsWhite(
                      fontSize: 22,
                      fontW: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: widthPadding.w, right: widthPadding.w, top: 8.h, bottom: 20.h),
                  child: Text(
                    '¡Estamos casi listos! Solo necesitamos que\nactualices tu información. No te preocupes este\npaso solo lo harás una vez.',
                    style: AppTextStyle.cls8Style(),
                  ),
                ),
                Container(
                  height: 390,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r))),
                  padding: EdgeInsets.only(left: widthPadding.w, right: widthPadding.w, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Información Personal',
                          style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: DropdownButtonFormField<ConstValue>(
                          style: AppTextStyle.cls2Style(),
                          decoration: AppTextFormStyle.defaultInputDecorationWithOutImage("Tipo de Documento"),
                          icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                          items: constDocumentsTypes.map((ConstValue value) {
                            return DropdownMenuItem<ConstValue>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              documentType = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: TextFormField(
                          controller: _documentController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          validator: validateIsEmpty,
                          style: AppTextStyle.cls2Style(),
                          enabled: documentType != null,
                          maxLengthEnforcement: MaxLengthEnforcement.none,
                          decoration: AppTextFormStyle.defaultInputDecorationWithOutImage('Documento').copyWith(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(4),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.cls4_3,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: AppColors.cls5_2)),
                                  child: Icon(Icons.search, color: AppColors.cls5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: TextFormField(
                            controller: _fullnameController,
                            validator: validateIsEmpty,
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.defaultInputDecorationWithOutImage('Nombres y Apellidos')),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: TextFormField(
                            controller: _birthDateController,
                            validator: validateIsEmpty,
                            inputFormatters: [DateInputFormatter()],
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.defaultInputDecorationWithOutImage('Fecha de Nacimiento')),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: DropdownButtonFormField<ConstValue>(
                          style: AppTextStyle.cls2Style(),
                          icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                          decoration: AppTextFormStyle.defaultInputDecorationWithOutImage("Género"),
                          items: constGendersTypes.map((ConstValue value) {
                            return DropdownMenuItem<ConstValue>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: (value) {
                            genderType = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 12, color: AppColors.cls7),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Información del Contacto',
                          style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: TextFormField(
                            controller: _emailController,
                            validator: validateEmail,
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.defaultInputDecorationWithOutImage('Correo Electrónico')),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: TextFormField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            validator: validateNumber,
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.defaultInputDecorationWithOutImage('Nro. de Teléfono')),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(height: 12, color: AppColors.cls7),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Información Laboral',
                          style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.w,
                        child: DropdownButtonFormField<ConstValue>(
                          style: AppTextStyle.cls2Style(),
                          icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                          decoration: AppTextFormStyle.defaultInputDecorationWithOutImage("Cargo"),
                          items: constPositionsTypes.map((ConstValue value) {
                            return DropdownMenuItem<ConstValue>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                          onChanged: (value) {
                            positionType = value;
                          },
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 280.w,
                        height: 40.h,
                        child: buildAppButtonWithOutExpanded(
                          context,
                          'Actualizar Información',
                          radiusCircular: 12,
                          isEnabled: true,
                          action: () {
                            _submitForm(context);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: UpdateDataSuccessContainer(),
        );
      },
    );
  }
}
