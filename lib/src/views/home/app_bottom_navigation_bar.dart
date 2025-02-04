import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/widgets/app_bottom_navigation.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final Color backgroudColor;
  const AppBottomNavigationBar({super.key, this.backgroudColor = AppColors.silverGray});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroudColor,
      child: Container(
        width: 320.w,
        height: 62.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(9.r), topRight: Radius.circular(9.r))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBottomNavigation(moduleName: 'Inicio', iconName: AppIcons.home),
                  AppBottomNavigation(moduleName: 'Ventas', iconName: AppIcons.sales),
                  AppBottomNavigation(moduleName: 'Caja', iconName: AppIcons.cashBox),
                  AppBottomNavigation(moduleName: 'Almacén', iconName: AppIcons.storage),
                  AppBottomNavigation(moduleName: 'Más', iconName: AppIcons.more),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
