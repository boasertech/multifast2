import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/local_repositories/sub_category_repository.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/sub_category_model.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/input_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerSubCategorySearch = TextEditingController();
    final repository = getIt<SubCategoryRepository>();
    return ValueListenableBuilder<List<AbsModel>>(
      valueListenable: getIt<SubCategoryRepository>().notifierList,
      builder: (context, subCategories, child) {
        bool isSelectAll = repository.isSelectAll();
        return Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SizedBox(width: 91.w, child: Divider(color: AppColors.border, thickness: 3))),
              SizedBox(height: 6),
              Text('Todas las subcategorías', style: AppTextStyle.cls2Style()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    repository.selectAllItems();
                  },
                  child: buildAppInputCheck(context, AppInputCheck(subCategories.length, 'Todos', isSelected: isSelectAll)),
                ),
              ),
              Divider(color: AppColors.border),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 12),
                child: Center(
                  child: SizedBox(
                    width: 290.w,
                    height: 35.h,
                    child: TextFormField(
                      controller: controllerSubCategorySearch,
                      onChanged: (value) {
                        repository.searchItems(value);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(AppIcons.search, scale: 1.6, color: AppColors.cls9),
                        hintText: 'Buscar Almacen',
                        hintStyle: AppTextStyle.cls9Style(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: AppColors.border, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: AppColors.border, width: 2)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 10, mainAxisExtent: 15.h),
                  itemCount: subCategories.length,
                  itemBuilder: (context, index) {
                    final s = subCategories[index] as SubCategoryModel;
                    return GestureDetector(
                      onTap: () {
                        repository.selectItem(s.entity.subCategoryId.toInt(), subCategories);
                      },
                      child: buildAppInputCheck(
                        context,
                        AppInputCheck(index, s.entity.name, isSelected: s.isSelected),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  buildAppButton(
                    context,
                    'Guardar',
                    action: () {
                      repository.saveChanges();
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(width: 10.w),
                  buildAppButton(
                    context,
                    'Cancelar',
                    isCancel: true,
                    action: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
