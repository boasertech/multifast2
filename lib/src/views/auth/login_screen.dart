import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/input_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_form_style.dart';
import 'package:multifast/styles/app_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final inputCheck = AppInputCheck(0, 'Recuerda mis datos');
  bool isPasswordShow = true;
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return Scaffold(
      backgroundColor: AppColors.cls1,
      appBar: AppBar(
        backgroundColor: AppColors.cls1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: AppColors.cls3, borderRadius: BorderRadius.circular(10.r)),
                  child: Image.asset(AppIcons.ask, scale: 2)),
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: AppColors.cls3, borderRadius: BorderRadius.circular(10.r)),
                  child: Image.asset(AppIcons.config, scale: 2)),
            )
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 20.h,
            child: SizedBox(
              width: 320.w,
              child: Center(
                child: Row(
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
              ),
            ),
          ),
          Positioned(
            top: 200,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r))),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Bienvenido', style: AppTextStyle.defaultStyle(fontSize: 30, fontW: FontWeight.w700)),
                  Text('Gestiona tu negocio de manera simple y eficiente,\ntodo en un solo lugar',
                      style: AppTextStyle.cls3Style(fontSize: 16)),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 280.w,
                    height: 40.w,
                    child: TextFormField(
                      controller: bloc.usernameController,
                      style: AppTextStyle.cls2Style(),
                      decoration: AppTextFormStyle.defaultInputDecoration('Usuario', AppIcons.user).copyWith(
                          suffixIcon: bloc.usernameController.text.isEmpty
                              ? null
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bloc.usernameController.text = '';
                                    });
                                  },
                                  child: Image.asset(AppIcons.cancel, scale: 1.6, color: AppColors.cls9))),
                      onChanged: (value) {
                        if (value.length < 2) {
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: 280.w,
                    height: 40.w,
                    child: TextFormField(
                      controller: bloc.passwordController,
                      style: AppTextStyle.cls2Style(),
                      obscureText: isPasswordShow,
                      decoration: AppTextFormStyle.defaultInputDecoration('Contraseña', AppIcons.lock).copyWith(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPasswordShow = !isPasswordShow;
                                });
                              },
                              child: Image.asset(AppIcons.eye, scale: 1.6, color: AppColors.cls9))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 30),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputCheck.isSelected = !inputCheck.isSelected;
                          });
                        },
                        child: buildAppInputCheckWithOutExpanded(context, inputCheck)),
                  ),
                  SizedBox(
                      width: 280.w,
                      height: 40.h,
                      child: buildAppButtonWithOutExpanded(
                        context,
                        'Iniciar Sesión',
                        radiusCircular: 12,
                        action: () {
                          context.read<AuthBloc>().add(LoginEvent(remember: inputCheck.isSelected));
                        },
                      )),
                  SizedBox(height: 6),
                  SizedBox(
                    width: 280.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            child: Text('¿Olvidaste tu contraseña?',
                                style: AppTextStyle.cls5Style(fontW: FontWeight.w500))),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 280.w,
                    padding: EdgeInsetsDirectional.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        color: AppColors.cls2, borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
                    child: Center(
                        child: Text('Un Producto de SERTECH PERÚ EIRL',
                            style: AppTextStyle.clsWhite(fontW: FontWeight.w500, fontSize: 13))),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: SizedBox(width: 320.w, child: Center(child: Image.asset(AppImages.login, scale: 2))),
          ),
        ],
      ),
    );
  }
}
