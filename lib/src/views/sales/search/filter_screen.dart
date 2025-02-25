import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/local_repositories/storage_repository.dart';
import 'package:multifast/src/local_repositories/sub_category_repository.dart';
import 'package:multifast/src/repositories/category_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/sales/search/widgets/categories_list.dart';
import 'package:multifast/src/views/sales/search/widgets/storages_list.dart';
import 'package:multifast/src/views/sales/search/widgets/sub_categories_list.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

final searchProduct = TypeSearchFilter(1, 'Producto');
final searchCodeBar = TypeSearchFilter(2, 'Código de barras');

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [BackWidget(), Text('Filtros', style: AppTextStyle.appBarStyle())],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Buscar por', style: AppTextStyle.cls2Style()),
                  SizedBox(height: 12),
                  _buildTypeSearch(context, searchProduct),
                  SizedBox(height: 10),
                  _buildTypeSearch(context, searchCodeBar),
                  SizedBox(height: 20),
                  ValueListenableBuilder<String>(
                    valueListenable: getIt<CategoryRepository>().countCategoriesSelected,
                    builder: (context, value, child) {
                      return _buildFilterType(
                        context,
                        FilterType(1, 'Categorías', value, AppIcons.category),
                        action: () {
                          _showBottomSheetCategories(context);
                        },
                      );
                    },
                  ),
                  if (getIt<SubCategoryRepository>().list.isNotEmpty)
                    ValueListenableBuilder(
                      valueListenable: getIt<SubCategoryRepository>().allSelect,
                      builder: (context, value, child) {
                        return _buildFilterType(
                          context,
                          FilterType(2, 'Sub Categoría', value, AppIcons.storages),
                          action: () {
                            getIt<SubCategoryRepository>().setListOriginal();
                            _showBottomSheetSubCategories(context);
                          },
                        );
                      },
                    ),
                  ValueListenableBuilder(
                    valueListenable: getIt<StorageRepository>().allSelect,
                    builder: (context, value, child) {
                      return _buildFilterType(
                        context,
                        FilterType(3, 'Almacenes', value, AppIcons.subCategory),
                        action: () {
                          getIt<StorageRepository>().setListOriginal();
                          _showBottomSheetStorages(context);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                _buildBottom(
                  context,
                  'Aplicar',
                  action: () {
                    getIt<ProductRepository>().applyFilter();
                    context.pop();
                  },
                ),
                SizedBox(width: 15),
                _buildBottom(
                  context,
                  'Limpiar Filtros',
                  isCancel: true,
                  action: () {
                    getIt<ProductRepository>().cleanFilters();
                    getIt<ProductRepository>().applyFilter();
                    context.pop();
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context, String name, {VoidCallback? action, bool isCancel = false}) {
    return Expanded(
      child: GestureDetector(
        onTap: action,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 11),
          decoration: isCancel
              ? BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                )
              : BoxDecoration(color: AppColors.cls5, borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              name,
              style: isCancel ? AppTextStyle.cls2Style() : AppTextStyle.clsWhite(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterType(BuildContext context, FilterType filter, {VoidCallback? action}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: action,
        child: Container(
          width: 290.w,
          height: 52.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  filter.image,
                  scale: 2.8,
                ),
                SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: '${filter.name}\n', style: AppTextStyle.cls2Style()),
                      TextSpan(text: filter.countSelected, style: AppTextStyle.lightStyle(fontSize: 14))
                    ],
                  ),
                ),
                Spacer(),
                Image.asset(
                  AppIcons.rightArrow,
                  scale: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTypeSearch(BuildContext context, TypeSearchFilter typeSearch) {
    return GestureDetector(
      onTap: () {
        setState(() {
          typeSearch.isSelected = !typeSearch.isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Row(
          children: [
            Container(
              width: 15.r,
              height: 15.r,
              decoration: BoxDecoration(
                color: typeSearch.isSelected ? AppColors.cls5_1 : AppColors.cls2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(Icons.check, color: Colors.white, size: 12.r),
            ),
            SizedBox(width: 8),
            Text(typeSearch.name, style: AppTextStyle.cls10Style()),
          ],
        ),
      ),
    );
  }

  void _showBottomSheetCategories(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: CategoriesList(),
        );
      },
    );
  }

  void _showBottomSheetStorages(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: StoragesList(),
        );
      },
    );
  }

  void _showBottomSheetSubCategories(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: SubCategoriesList(),
        );
      },
    );
  }
}

class FilterType {
  final int index;
  final String name;
  final String countSelected;
  final String image;

  FilterType(this.index, this.name, this.countSelected, this.image);
}

class TypeSearchFilter {
  final int index;
  final String name;
  bool isSelected;

  TypeSearchFilter(this.index, this.name, {this.isSelected = false});
}
