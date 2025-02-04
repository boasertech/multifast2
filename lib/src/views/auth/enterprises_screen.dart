import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/models/branch_model.dart';
import 'package:multifast/src/models/enterprise_model.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/auth/widgets/select_branches.dart';
import 'package:multifast/src/views/auth/widgets/select_enterprises.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class EnterprisesScreen extends StatelessWidget {
  const EnterprisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cls1,
      appBar: AppBar(
        backgroundColor: AppColors.cls1,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.mainLogo, scale: 2),
                  Column(
                    children: [
                      SizedBox(height: 16),
                      Text('v${Config.version}', style: AppTextStyle.clsWhiteStyle()),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 80.h),
            Text('¡Listos para trabajar juntos!', style: AppTextStyle.big24()),
            Text('Seleccione una empresa y una sucursal\npara continuar.',
                style: AppTextStyle.clsWhite(fontW: FontWeight.w500)),
            SizedBox(height: 20),
            Container(
              width: 280.w,
              height: 210.h,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  StreamBuilder<EnterpriseModel?>(
                    stream: getIt<AuthRepository>().enterpriseSelectedStream,
                    builder: (context, snapshot) {
                      String? enterpriseSelected;
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        enterpriseSelected = null;
                      } else {
                        final entity = snapshot.data;
                        if (entity != null) {
                          enterpriseSelected = entity.entity.name;
                        }
                      }
                      return _buildOptionSelected(context, 'Empresa', AppIcons.store,
                          nameSelected: enterpriseSelected,
                          isLock: getIt<AuthRepository>().isLock(),
                          action: () => _showBottomSheetEnterprises(context));
                    },
                  ),
                  StreamBuilder<BranchModel?>(
                      stream: getIt<BranchesRepository>().branchSelectedStream,
                      builder: (context, snapshot) {
                        String? branchSelected;
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          branchSelected = null;
                        } else {
                          final entity = snapshot.data;
                          if (entity != null) {
                            branchSelected = entity.entity.name;
                          }
                        }
                        return _buildOptionSelected(context, 'Sucursal', AppIcons.location,
                            nameSelected: branchSelected,
                            isLock: getIt<BranchesRepository>().isLock(),
                            action: () => _showBottomSheetBranches(context));
                      }),
                  SizedBox(height: 40),
                  SizedBox(
                      width: 250.w,
                      height: 40.h,
                      child: buildAppButtonWithOutExpanded(
                        context,
                        'Iniciar gestión',
                        action: () {
                          if (getIt<BranchesRepository>().branchSelected == null) {
                            return;
                          }
                          context.read<AuthBloc>().add(LoginEvent());
                        },
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOptionSelected(BuildContext context, String name, String icon,
      {String? nameSelected, VoidCallback? action, bool isLock = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: GestureDetector(
        onTap: isLock ? null : action,
        child: Container(
          width: 250.w,
          height: 40.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
              color: isLock ? AppColors.cls9.withValues(alpha: 0.15) : null,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: AppColors.border)),
          child: Row(
            children: [
              Image.asset(icon, scale: 2),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: name, style: AppTextStyle.cls9Style()),
                      if (nameSelected != null) TextSpan(text: '\n$nameSelected', style: AppTextStyle.cls2Style())
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Image.asset(AppIcons.downArrow, scale: 2)
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheetEnterprises(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: SelectEnterprises(),
        );
      },
    );
  }

  void _showBottomSheetBranches(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: SelectBranches(),
        );
      },
    );
  }
}
