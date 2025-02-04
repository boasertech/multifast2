import 'package:get_it/get_it.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/repositories/category_repository.dart';
import 'package:multifast/src/repositories/internal/recent_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/services/abs_auth_service.dart';
import 'package:multifast/src/services/abs_qproduct_detail_service.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';
import 'package:multifast/src/services/grpc/auth_grpc_service.dart';
import 'package:multifast/src/services/grpc/qproduct_detail_grpc_service.dart';
import 'package:multifast/src/services/grpc/qproduct_grpc_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //repositories
  getIt.registerLazySingleton<ProductRepository>(() => ProductRepository());
  getIt.registerLazySingleton<CategoryRepository>(() => CategoryRepository());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<BranchesRepository>(() => BranchesRepository());
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
  getIt.registerLazySingleton<RecentRepository>(() => RecentRepository());
  
  //services
  getIt.registerLazySingleton<AbsQProductService>(() => QProductGrpcService());
  getIt.registerLazySingleton<AbsAuthService>(() => AuthGrpcService());
  getIt.registerLazySingleton<AbsQProductDetailService>(() => QProductDetailGrpcService());
  /*getIt.registerSingleton<MyService>(MyService());
  getIt.registerLazySingleton<AnotherService>(() => AnotherService());
  getIt.registerFactory<YetAnotherService>(() => YetAnotherService());*/
}
