import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/bloc/navigation_bloc.dart';
import 'package:multifast/src/views/home/widgets/app_bottom_navigation.dart';
import 'package:multifast/src/views/home/widgets/app_bottom_row_widget.dart';
import 'package:multifast/src/views/widgets/button_with_items.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/utils/actions.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final Color backgroudColor;
  final bool returnHome;

  const AppBottomNavigationBar({super.key, this.backgroudColor = AppColors.silverGray, this.returnHome = false});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int optionSelected = 0;

  @override
  Widget build(BuildContext context) {
    optionSelected = widget.returnHome ? 0 : optionSelected;
    return Container(
      color: widget.backgroudColor,
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
                  AppBottomNavigation(
                    nav: NavigationBottomBarButton(0, 'Inicio', AppIcons.home),
                    optionSelected: optionSelected,
                    onTap: () {
                      setState(() {
                        optionSelected = 0;
                        context.read<NavigationBloc>().add(NavScreenEvent('/home'));
                      });
                    },
                  ),
                  AppBottomNavigation(
                    nav: NavigationBottomBarButton(1, 'Ventas', AppIcons.sales),
                    optionSelected: optionSelected,
                    onTap: () {
                      setState(() {
                        optionSelected = 1;
                        context.read<NavigationBloc>().add(NavScreenEvent('/sales'));
                      });
                    },
                  ),
                  AppBottomNavigation(
                    nav: NavigationBottomBarButton(2, 'Caja', AppIcons.cashBox),
                    optionSelected: optionSelected,
                    onTap: () {
                      setState(() {
                        optionSelected = 2;
                      });
                    },
                  ),
                  AppBottomNavigation(
                    nav: NavigationBottomBarButton(3, 'Almacén', AppIcons.storage),
                    optionSelected: optionSelected,
                    onTap: () {
                      setState(() {
                        optionSelected = 3;
                      });
                    },
                  ),
                  ButtonWithItems(
                    items: [
                      ButtonWithItems(
                        child: AppBottomRowWidget(moduleName: 'Cerrar Sesión', iconName: AppIcons.cancel),
                        action: () {
                          Navigator.of(context).pop();
                          actionCloseSession(context);
                        },
                      )
                    ],
                    child: AppBottomNavigation(
                      nav: NavigationBottomBarButton(4, 'Más', AppIcons.more),
                      optionSelected: optionSelected,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBottomBarButton {
  final int id;
  final String name;
  final String image;

  NavigationBottomBarButton(this.id, this.name, this.image);
}
