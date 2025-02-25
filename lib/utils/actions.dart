import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/const_repositories/enterprise_repository.dart';
import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/generated/qproducts.pb.dart';
import 'package:multifast/src/local_repositories/category_repository.dart';
import 'package:multifast/src/local_repositories/storage_repository.dart';
import 'package:multifast/src/local_repositories/sub_category_repository.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/services/abs_enterprise_service.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/home/bloc/navigation_bloc.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';

actionCloseSession(BuildContext context) {
  context.read<AuthBloc>().add(CloseSessionEvent());
  context.read<QProductsBloc>().add(CloseQProducts());
  context.read<NavigationBloc>().add(CloseNavigation());
  getIt<AuthRepository>().close();
  getIt<ProductRepository>().closeStream();
  getIt<StorageRepository>().close();
  getIt<SubCategoryRepository>().close();
  getIt<CategoryRepository>().close();
  context.go('/auth');
}

actionLoadProducts(BuildContext context) {
  final user = getIt<UserRepository>().user;
  final request = QProductRequest()
    ..companyRuc = user.company.companyRuc
    ..branchId = user.branch.branchId.toInt();
  context.read<QProductsBloc>().add(LoadedQProducts(request));
}

actionLoadDetailProduct(BuildContext context, QProductModel exists, bool isQuotation, {bool isScan = false}) {
  final branchId = getIt<UserRepository>().user.branch.branchId.toInt();
  final request = QProductDetailRequest()
    ..branchId = branchId
    ..productId = exists.entity.productId;
  context.read<QProductDetailBloc>().add(LoadQProductDetailEvent(request, exists, isQuotation, isScan: isScan));
}

actionLoadDataEnterprise() async {
  final service = getIt<AbsEnterpriseService>();
  final user = getIt<UserRepository>().user;
  final request = EnterpriseRequest()
    ..companyRuc = user.company.companyRuc
    ..branchId = user.branch.branchId;
  final result = await service.getDataEnterprise(request);
  result.fold(
    (error) {
      Config.talker.error(error.message);
    },
    (response) {
      if (response.hasListStorageResponse()) {
        getIt<StorageRepository>().setAllData(response.listStorageResponse);
      }
      if (response.hasListCategoryResponse()) {
        getIt<CategoryRepository>().setAllData(response.listCategoryResponse);
      }
      if (response.hasListSubCategoryResponse()) {
        getIt<SubCategoryRepository>().setAllData(response.listSubCategoryResponse);
      }
      if (response.hasListValidityOfferResponse()) {
        getIt<EnterpriseRepository>().initValidityOffers(response.listValidityOfferResponse.validityOffers);
      }
      if (response.hasListPayConditionResponse()) {
        getIt<EnterpriseRepository>().initPayConditions(response.listPayConditionResponse.payConditions);
      }
    },
  );
}
