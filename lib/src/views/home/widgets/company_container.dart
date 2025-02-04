import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class CompanyContainer extends StatelessWidget {
  const CompanyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final userRepository = getIt<UserRepository>();
    final user = userRepository.user;
    final company = user.company.name;
    final branch = user.branch.name;
    final rol = user.rolName;
    return SizedBox(
      width: 300.w,
      child: Row(
        children: [
          /*SizedBox(
            width: 32,
            height: 31,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvf44yYHmbN8JUtRD7OMsxATYRb22jCyL0Xw&s',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return CircularProgressIndicator();
              },
            ),
          ),*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$company - $branch', style: AppTextStyle.textSecondary),
              Text(rol, style: AppTextStyle.text.copyWith(color: AppColors.brightGray))
            ],
          )
        ],
      ),
    );
  }
}
