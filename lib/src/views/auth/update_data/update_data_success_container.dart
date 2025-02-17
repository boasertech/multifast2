import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class UpdateDataSuccessContainer extends StatelessWidget {
  const UpdateDataSuccessContainer({super.key});

  final String title = 'Tus datos han sido actualizados exitosamente.';
  final String subtitle = 'Agradecemos tu tiempo y nos comprometemos a mantener tu información segura y protegida.';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 387.h,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        children: [
          SizedBox(width: 137.w, height: 137.w, child: Image.asset(AppImages.updateData)),
          SizedBox(height: 20),
          Text(
            title,
            style: AppTextStyle.defaultStyle(fontSize: 23, fontW: FontWeight.bold).copyWith(height: 0.95),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            subtitle,
            style: AppTextStyle.cls10Style(fontSize: 14).copyWith(height: 1.1),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          SizedBox(
              width: 250.w,
              height: 40.h,
              child: buildAppButtonWithOutExpanded(
                context,
                'Continuar',
                action: () {
                  context.read<AuthBloc>().add(LoginEvent());
                  context.go('/auth');
                },
              )),
        ],
      ),
    );
  }
}
