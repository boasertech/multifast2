import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final userRepository = getIt<UserRepository>();
    final user = userRepository.user;
    final name = user.fullname.substring(10);
    final rol = user.rolName;
    final lastSession = DateTime.parse(user.lastConnection);
    return ClipRect(
      child: Builder(builder: (context) {
        final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);
        final imagePath = isDesktop ? AppImages.mainDesktop : AppImages.mainMovil;
        final widthBase = isDesktop ? 609.w : 300.w;
        final heightBase = isDesktop ? 158.h : 169.h;
        return SizedBox(
            width: widthBase,
            height: heightBase,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(widthBase, heightBase),
                  painter: GradientBackgroundWelcome(),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r), color: Colors.white.withValues(alpha: 0.3)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
                      child: Text(
                          'Último Inicio de Sesión: ${lastSession.day}/${lastSession.month}/${lastSession.year} ${lastSession.hour}:${lastSession.minute}:${lastSession.second}',
                          style: AppTextStyle.textSecondary.copyWith(fontSize: 11)),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: heightBase / 3.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bienvenido, $name', style: AppTextStyle.title),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Cargo: ', style: AppTextStyle.title.copyWith(fontSize: 13.5)),
                            TextSpan(text: rol, style: AppTextStyle.textSecondary),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Usuario: ', style: AppTextStyle.title.copyWith(fontSize: 13.5)),
                            TextSpan(text: name, style: AppTextStyle.textSecondary),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  child: SizedBox(
                    width: isDesktop ? 213.w : 91.w,
                    height: isDesktop ? 143.h : 109.h,
                    child: Image.asset(imagePath),
                  ),
                )
              ],
            ));
      }),
    );
  }
}

class GradientBackgroundWelcome extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..shader = LinearGradient(
        colors: [AppColors.darkOrange, AppColors.pumpkinOrange],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final rect = RRect.fromRectAndRadius(
      Rect.fromLTRB(0, 0, size.width, size.height),
      Radius.circular(10.8.r),
    );

    final circlePaint = Paint()
      ..color = AppColors.lowCoral.withValues(alpha: 0.22)
      ..blendMode = BlendMode.lighten;

    canvas.drawRRect(rect, backgroundPaint);
    canvas.drawCircle(Offset(-size.width * 0.033, size.height * 1.02), 88.5.r, circlePaint);
    canvas.drawCircle(Offset(size.width * 1.13, size.height * 0.2), 86.r, circlePaint);
    canvas.drawCircle(Offset(size.width * 0.72, -size.height * 0.2), 86.r, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
