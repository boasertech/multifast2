import 'package:get_it/get_it.dart';
import 'package:multifast/src/const_repositories/enterprise_repository.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/controllers/product_controller.dart';
import 'package:multifast/src/local_repositories/category_repository.dart' as local;
import 'package:multifast/src/local_repositories/quotation_sqlite_repository.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/detail_quotation_db.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
import 'package:multifast/src/local_repositories/storage_repository.dart';
import 'package:multifast/src/local_repositories/sub_category_repository.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/repositories/category_repository.dart';
import 'package:multifast/src/repositories/internal/recent_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/services/abs_auth_service.dart';
import 'package:multifast/src/services/abs_client_service.dart';
import 'package:multifast/src/services/abs_enterprise_service.dart';
import 'package:multifast/src/services/abs_qproduct_detail_service.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';
import 'package:multifast/src/services/abs_user_service.dart';
import 'package:multifast/src/services/grpc/auth_grpc_service.dart';
import 'package:multifast/src/services/grpc/client_grpc_service.dart';
import 'package:multifast/src/services/grpc/enterprise_grpc_service.dart';
import 'package:multifast/src/services/grpc/qproduct_detail_grpc_service.dart';
import 'package:multifast/src/services/grpc/qproduct_grpc_service.dart';
import 'package:multifast/src/services/grpc/user_grpc_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //repositories
  getIt.registerLazySingleton<ProductRepository>(() => ProductRepository());
  getIt.registerLazySingleton<CategoryRepository>(() => CategoryRepository());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<BranchesRepository>(() => BranchesRepository());
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
  getIt.registerLazySingleton<RecentRepository>(() => RecentRepository());
  getIt.registerLazySingleton<StorageRepository>(() => StorageRepository());
  getIt.registerLazySingleton<local.CategoryRepository>(() => local.CategoryRepository());
  getIt.registerLazySingleton<SubCategoryRepository>(() => SubCategoryRepository());
  getIt.registerLazySingleton<EnterpriseRepository>(() => EnterpriseRepository());
  getIt.registerLazySingleton<QuotationSqliteRepository>(() => QuotationSqliteRepository());

  //services
  getIt.registerLazySingleton<AbsQProductService>(() => QProductGrpcService());
  getIt.registerLazySingleton<AbsAuthService>(() => AuthGrpcService());
  getIt.registerLazySingleton<AbsQProductDetailService>(() => QProductDetailGrpcService());
  getIt.registerLazySingleton<AbsUserService>(() => UserGrpcService());
  getIt.registerLazySingleton<AbsEnterpriseService>(() => EnterpriseGrpcService());
  getIt.registerLazySingleton<AbsClientService>(() => ClientGrpcService());

  //controllers
  getIt.registerLazySingleton<NewQuotationController>(() => NewQuotationController());
  //getIt.registerLazySingleton<QuotationGenerate>(() => QuotationGenerate());
  getIt.registerFactory<ProductController>(() => ProductController());

  //bd
  getIt.registerLazySingleton<QuotationDb>(() => QuotationDb());
  getIt.registerLazySingleton<DetailQuotationDb>(() => DetailQuotationDb());
  /*getIt.registerSingleton<MyService>(MyService());
  getIt.registerLazySingleton<AnotherService>(() => AnotherService());
  getIt.registerFactory<YetAnotherService>(() => YetAnotherService());*/
}
