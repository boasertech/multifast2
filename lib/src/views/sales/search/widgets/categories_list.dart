import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/models/qcategory_model.dart';
import 'package:multifast/src/repositories/category_repository.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/input_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final _controllerCategorySearch = TextEditingController();
  final repository = getIt<CategoryRepository>();

  @override
  void initState() {
    super.initState();
    repository.initStream();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15, top: 5),
      child: StreamBuilder<List<QCategoryModel>>(
        stream: repository.stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final categories = snapshot.data ?? [];
          final allC = repository.selectAllCategories;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SizedBox(width: 91.w, child: Divider(color: AppColors.border, thickness: 3))),
              SizedBox(height: 6),
              Text('Todas las categorías', style: AppTextStyle.cls2Style()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    repository.toggleSelectAllCategories();
                  },
                  child: buildAppInputCheck(
                      context, AppInputCheck(categories.length, allC.name, isSelected: allC.isSelected)),
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
                      controller: _controllerCategorySearch,
                      onChanged: (value) {
                        repository.searchInListTemp(value);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(AppIcons.search, scale: 1.6, color: AppColors.cls9),
                        hintText: 'Buscar Categoría',
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
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final c = categories[index];
                    return GestureDetector(
                        onTap: () {
                          repository.toggleSelectCategory(c.qcategoryId, categories);
                        },
                        child: buildAppInputCheck(context, AppInputCheck(index, c.name, isSelected: c.isSelected)));
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
          );
        },
      ),
    );
  }
}
