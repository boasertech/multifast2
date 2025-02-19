import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/home/app_bottom_navigation_bar.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cls1,
      appBar: buildAppBarSales(context),
      body: Column(
        children: [buildSalesScreen(context), AppBottomNavigationBar()],
      ),
    );
  }
}

PreferredSizeWidget buildAppBarSales(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(140.h),
    child: Padding(
      padding: EdgeInsets.only(top: 34.h, left: 12.w, bottom: 12.h),
      child: Text(
        "Ventas",
        style: AppTextStyle.cls2Style(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget buildSalesScreen(BuildContext context) {
  final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);
  final widthBase = isDesktop ? 609.w : 320.w;
  final heightBase = isDesktop ? 158.h : 140.h;
  return Expanded(
    child: Stack(
      children: [
        CustomPaint(
          size: Size(widthBase, heightBase),
          painter: GradientBackgroundSalesBody(),
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: GridView.builder(
              itemCount: optionsSale.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 14.w, mainAxisSpacing: 12.h, mainAxisExtent: 162.h),
              itemBuilder: (context, index) {
                final option = optionsSale[index];
                return GestureDetector(
                  onTap: () {
                    if (option.isActive) {
                      context.push(option.route);
                    } else {
                      Fluttertoast.showToast(
                        msg: "Próximamente disponible",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 2,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                  child: _buildOptionSale(
                    context,
                    option,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildOptionSale(BuildContext context, OptionSale option) {
  return Container(
    width: 143.w,
    height: 162.w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: Colors.white),
    child: Column(
      children: [
        SizedBox(
          height: 5.w,
        ),
        Container(
          width: 130.w,
          height: 90.w,
          padding: EdgeInsets.only(right: 30.w),
          color: Colors.white,
          child: Image.asset(option.image),
        ),
        SizedBox(
          height: 5.w,
        ),
        Container(
          width: 123.w,
          height: 20.w,
          decoration: BoxDecoration(color: Colors.white),
          child: Text(option.tilte, style: AppTextStyle.cls2Style()),
        ),
        SizedBox(
          width: 123.w,
          height: 30.w,
          child: Text(option.subTitle, style: AppTextStyle.cls10Style(fontSize: 12)),
        ),
      ],
    ),
  );
}

final optionsSale = [
  OptionSale(0, 'Buscar Producto', 'Encuentra artículos de manera rápida y precisa.', AppOptionsImages.salesSearch,
      '/sales/search/false', true),
  OptionSale(1, 'Cotizaciones', 'Prepara propuestas rápidas y detalladas.', AppOptionsImages.salesQuotation, '/quotation', true),
  OptionSale(2, 'Venta Electrónica', 'Optimiza el registro y consulta de tus ventas.',
      AppOptionsImages.salesElectronicSale, '', false),
  OptionSale(
      3, 'Orden de Venta', 'Gestiona pedidos de tus clientes fácilmente.', AppOptionsImages.salesOrder, '', false),
  OptionSale(4, 'Preciario', 'Accede rápido a precios y realiza ventas.', AppOptionsImages.salesPrice, '', false),
];

class OptionSale {
  final int id;
  final String tilte;
  final String subTitle;
  final String image;
  final String route;
  final bool isActive;

  OptionSale(this.id, this.tilte, this.subTitle, this.image, this.route, this.isActive);
}

class GradientBackgroundSalesBody extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final circlePaint = Paint()
      ..color = AppColors.lowCoral.withValues(alpha: 0.22)
      ..blendMode = BlendMode.lighten;
    final circleOrage = Paint()
      ..shader = LinearGradient(
        colors: [AppColors.gradient1, AppColors.cls4],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, 210.h));
    canvas.drawCircle(Offset(160.w, -180.h), 250.r, circleOrage);
    canvas.drawCircle(Offset(size.width * 0.95, -95.h), 86.r, circlePaint);
    canvas.drawCircle(Offset(size.width * 0.6, -125.h), 86.r, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
