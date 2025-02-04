import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/models/enterprise_model.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_form_style.dart';
import 'package:multifast/styles/app_text_style.dart';

class SelectEnterprises extends StatefulWidget {
  const SelectEnterprises({super.key});

  @override
  State<SelectEnterprises> createState() => _SelectEnterprisesState();
}

class _SelectEnterprisesState extends State<SelectEnterprises> {
  final _controllerEnterpriseSearch = TextEditingController();
  final repository = getIt<AuthRepository>();

  @override
  void initState() {
    super.initState();
    repository.initStream();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15, top: 5),
      child: StreamBuilder<List<EnterpriseModel>>(
        stream: repository.enterprisesStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final enterprises = snapshot.data ?? [];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SizedBox(width: 91.w, child: Divider(color: AppColors.border, thickness: 3))),
              SizedBox(height: 6),
              Text('Empresas', style: AppTextStyle.cls2Style(fontSize: 18)),
              Text('Elige dónde trabajarás hoy. Selecciona tu\nempresa.', style: AppTextStyle.cls9Style(fontSize: 16)),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 12),
                child: Center(
                  child: SizedBox(
                    width: 290.w,
                    height: 35.h,
                    child: TextFormField(
                      controller: _controllerEnterpriseSearch,
                      onChanged: (value) {
                        repository.searchEnterprise(value);
                      },
                      decoration: AppTextFormStyle.defaultInputDecoration('Buscar empresa', AppIcons.search),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: enterprises.length,
                  itemBuilder: (context, index) {
                    final model = enterprises[index];
                    return GestureDetector(
                        onTap: () {
                          repository.selectEnterprise(model, enterprises);
                        },
                        child: _buildEnterpriseContainer(context, model));
                  },
                ),
              ),
              Row(
                children: [
                  buildAppButton(
                    context,
                    'Seleccionar',
                    action: () {
                      repository.saveEnterpriseSelected();
                      context.read<AuthBloc>().add(LoginEvent());
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEnterpriseContainer(BuildContext context, EnterpriseModel model) {
    return Container(
      width: 280.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: model.isSelected ? AppColors.cls4_2 : Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 24.w,
            decoration: BoxDecoration(
              color: AppColors.empty,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              model.entity.name,
              style: model.isSelected ? AppTextStyle.cls5Style(fontSize: 14) : AppTextStyle.cls3Style(),
            ),
          ),
        ],
      ),
    );
  }
}
