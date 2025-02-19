import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/widgets/option_menu.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    /*final breakpoint = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
        ? (ResponsiveBreakpoints.of(context).smallerThan(TABLET) ? MOBILE : TABLET)
        : DESKTOP;*/
    final breakpoint = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP) ? MOBILE : DESKTOP;
    switch (breakpoint) {
      case MOBILE:
        return OrientationBuilder(
          builder: (context, orientation) {
            final isLandscape = MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
            if (isLandscape) {
              return _buildRow(context);
            } else {
              return _buildGrid(context);
            }
          },
        );
      default:
        return _buildGrid(context);
    }
  }

  Widget _buildRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          options.length,
          (index) {
            return SizedBox(
              width: 160,
              height: 180,
              child: options[index],
            );
          },
        ),
      ),
    );
  }

  Widget _buildGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisExtent: 128.h, mainAxisSpacing: 10),
      padding: EdgeInsets.zero,
      itemCount: options.length,
      itemBuilder: (context, index) {
        return options[index];
      },
    );
  }
}

const List<OptionMenu> options = [
  OptionMenu(
    index: 1,
    moduleName: 'Buscar\nProducto',
    iconName: AppOptionsImages.searchProduct,
    route: '/sales/search/false',
  ),
  /*OptionMenu(
    index: 2,
    moduleName: 'Nueva Venta',
    iconName: AppOptionsImages.newSale,
  ),
  OptionMenu(
    index: 3,
    moduleName: 'Venta Rápida',
    iconName: AppOptionsImages.fastSale,
  ),
  OptionMenu(
    index: 4,
    moduleName: 'Nueva\nCotización',
    iconName: AppOptionsImages.newQuotation,
  ),
  OptionMenu(
    index: 5,
    moduleName: 'Nuevo Producto',
    iconName: AppOptionsImages.newVoucher,
  ),
  OptionMenu(
    index: 6,
    moduleName: 'Nuevo\nComprobante',
    iconName: AppOptionsImages.newVoucher,
  ),*/
];
