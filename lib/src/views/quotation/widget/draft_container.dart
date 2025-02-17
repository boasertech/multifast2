import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DraftContainer extends StatelessWidget {
  const DraftContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Builder(builder: (context) {
        final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);
        final widthBase = isDesktop ? 609.w : 290.w;
        final heightBase = isDesktop ? 158.h : 87.h;
        return SizedBox(
            width: widthBase,
            height: heightBase,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(widthBase, heightBase),
                  painter: GradientBackgroundWelcome(),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.r)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 82.w, height: 72.w, child: Image.asset(AppOptionsImages.draft)),
                        Container(
                            width: 200.w,
                            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Borradores',
                                  style: AppTextStyle.clsWhite(),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                    'Recuerda que estas cotizaciones están guardadas solo en tu teléfono y no en el sistema.',
                                    style: AppTextStyle.clsWhite(fontW: FontWeight.w400).copyWith(height: 1)),
                                SizedBox(height: 8.h)
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
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
    canvas.drawCircle(Offset(-size.width * .02, -size.height * 0.5), 88.5.r, circlePaint);
    canvas.drawCircle(Offset(size.width * 0.90, size.height * 1.4), 86.r, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
