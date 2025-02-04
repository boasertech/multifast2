import 'package:bloc/bloc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/auth.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/services/abs_auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AbsAuthService service;
  final repository = getIt<AuthRepository>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  AuthBloc({required this.service}) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      final stopwatch = Stopwatch()..start();
      final request = LoginRequest()
        ..username = usernameController.text //'902434392'
        ..password = passwordController.text; //'A90243489';
      if (repository.enterpriseSelected != null) {
        request.companyRuc = repository.enterpriseSelected!.entity.companyRuc;
        if (getIt<BranchesRepository>().branchSelected != null) {
          request.branchId = getIt<BranchesRepository>().branchSelected!.entity.branchId;
        }
      } else {
        emit(AuthLoading());
      }
      var response = await service.login(request);
      stopwatch.stop();
      response.fold(
        (error) => emit(AuthError(error)),
        (result) {
          if (event.remember != null) {
            rememberUser = event.remember!;
          }
          if (result.hasListEnterprisesResponse()) {
            repository.saveEnterprises(result.listEnterprisesResponse.enterprises);
            emit(AuthEnterprises());
          } else if (result.hasListBranchesResponse()) {
            repository.setEnterprise(result.listBranchesResponse.company);
            getIt<BranchesRepository>().saveBranches(result.listBranchesResponse.branches);
            emit(AuthEnterprises());
          } else if (result.hasUserResponse()) {
            final user = result.userResponse;
            user.company = repository.enterpriseSelected?.entity ?? user.company;
            user.branch = getIt<BranchesRepository>().branchSelected?.entity ?? user.branch;
            getIt<UserRepository>().save(user);
            if (rememberUser) {
              saveData(user.company.companyRuc, user.branch.branchId.toInt());
            }
            emit(AuthSuccess());
          } else {
            emit(AuthError(ErrorModel.setError(result.error)));
          }
        },
      );
      Config.printDebug('Login - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
    });

    on<AutoLoginEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final rememberUser = prefs.getBool('rememberUser') ?? false;
      if (rememberUser) {
        final username = prefs.getString('username');
        final password = prefs.getString('password');
        final companyRuc = prefs.getString('companyRuc');
        final branchId = prefs.getInt('branchId');
        final LoginRequest request = LoginRequest()
          ..username = username!
          ..password = password!
          ..companyRuc = companyRuc!
          ..branchId = Int64(branchId!);
        var response = await service.login(request);
        response.fold(
          (error) => emit(AuthError(error)),
          (result) {
            if (result.hasUserResponse()) {
              final user = result.userResponse;
              user.company = user.company;
              user.branch = user.branch;
              getIt<UserRepository>().save(user);
              emit(AuthSuccess());
            } else {
              emit(AuthError(ErrorModel.setError(result.error)));
            }
          },
        );
      } else {
        emit(AuthInitial());
      }
    });
  }

  void saveData(String companyRuc, int branchId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberUser', rememberUser);
    await prefs.setString('username', usernameController.text);
    await prefs.setString('password', passwordController.text);
    await prefs.setString('companyRuc', companyRuc);
    await prefs.setInt('branchId', branchId);
  }
}
