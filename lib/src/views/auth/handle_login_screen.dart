import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';
import 'package:multifast/src/repositories/auth_repository.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/auth/enterprises_screen.dart';
import 'package:multifast/src/views/auth/login_screen.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/widgets/loading_overlay.dart';

class HandleLoginScreen extends StatelessWidget {
  const HandleLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          final int branchId = getIt<BranchesRepository>().branchSelected!.entity.branchId.toInt();
          final request = QProductRequest()
            ..companyRuc = getIt<AuthRepository>().enterpriseSelected!.entity.companyRuc
            ..branchId = branchId;
          context.read<QProductsBloc>().add(LoadedQProducts(request));
          context.go('/');
        }
      },
      builder: (context, state) {
        if (state is AuthInitial || state is AuthError || state is AuthLoading) {
          return LoadingOverlay(
            isLoading: state is AuthLoading,
            child: LoginScreen(),
          );
        } else if (state is AuthEnterprises || state is AuthBranches) {
          return EnterprisesScreen();
        }
        return Container();
      },
    );
  }
}
