import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/app_bottom_navigation_bar.dart';
import 'package:multifast/src/views/home/menu_container.dart';
import 'package:multifast/src/views/home/news_container.dart';
import 'package:multifast/src/views/home/summary_container.dart';
import 'package:multifast/src/views/home/widgets/company_container.dart';
import 'package:multifast/src/views/home/widgets/welcome_container.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cls1,
      appBar: AppBar(
        title: CompanyContainer(),
        backgroundColor: AppColors.cls1,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.cls1,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10.w),
                      child: WelcomeContainer(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.cls7,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.r),
                          topRight: Radius.circular(14.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25, bottom: 15, left: 10.w),
                            child: Text(
                              'Opciones Rápidas',
                              style: AppTextStyle.subtitleSecondary,
                            ),
                          ),
                          MenuContainer(),
                          SummaryContainer(),
                          NewsContainer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppBottomNavigationBar()
        ],
      ),
    );
  }
}
