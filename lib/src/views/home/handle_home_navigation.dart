import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/home/app_bottom_navigation_bar.dart';
import 'package:multifast/src/views/home/bloc/navigation_bloc.dart';
import 'package:multifast/src/views/home/home_screen.dart';
import 'package:multifast/src/views/sales/sales_screen.dart';
import 'package:multifast/styles/app_colors.dart';

class HandleHomeNavigation extends StatelessWidget {
  const HandleHomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationBloc, NavigationState>(
      builder: (context, state) {
        final PreferredSizeWidget appBar;
        final Widget body;
        bool isHome = false;
        Color background = AppColors.silverGray;
        if (state is NavigationSalesScreen) {
          appBar = buildAppBarSales(context);
          body = buildSalesScreen(context);
          background = AppColors.cls1;
        } else {
          appBar = buildAppBarHome(context);
          body = buildHomeScreen(context);
          isHome = true;
        }
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) {
              if (!isHome) {
                context.read<NavigationBloc>().add(NavScreenEvent('/home'));
              }
            }
          },
          child: Scaffold(
            appBar: appBar,
            backgroundColor: AppColors.cls1,
            body: Column(
              children: [body, AppBottomNavigationBar(returnHome: isHome, backgroudColor: background)],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is NavigationScreen) {
          context.push(state.route);
        }
      },
    );
  }
}
