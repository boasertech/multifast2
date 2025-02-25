import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/local_repositories/storage_repository.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/input_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class StoragesList extends StatelessWidget {
  const StoragesList({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerCategorySearch = TextEditingController();
    final repository = getIt<StorageRepository>();
    return ValueListenableBuilder<List<AbsModel>>(
      valueListenable: getIt<StorageRepository>().notifierList,
      builder: (context, storages, child) {
        bool isSelectAll = repository.isSelectAll();
        return Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SizedBox(width: 91.w, child: Divider(color: AppColors.border, thickness: 3))),
              SizedBox(height: 6),
              Text('Todas los almacenes', style: AppTextStyle.cls2Style()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    repository.selectAllItems();
                  },
                  child: buildAppInputCheck(context, AppInputCheck(storages.length, 'Todos', isSelected: isSelectAll)),
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
                      controller: controllerCategorySearch,
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
                      crossAxisCount: 1, crossAxisSpacing: 8, mainAxisSpacing: 10, mainAxisExtent: 15.h),
                  itemCount: storages.length,
                  itemBuilder: (context, index) {
                    final s = storages[index];
                    return GestureDetector(
                      onTap: () {
                        repository.selectItem(s.entity.storageId.toInt(), storages);
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
                      if (repository.isSelectNone()) {
                        Fluttertoast.showToast(
                          msg: "Debe de mantener almenos un almacen",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                        return;
                      }
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
