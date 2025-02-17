import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/auth/enterprises_screen.dart';
import 'package:multifast/src/views/auth/login_screen.dart';
import 'package:multifast/src/views/widgets/loading_overlay.dart';
import 'package:multifast/utils/actions.dart';

class HandleLoginScreen extends StatelessWidget {
  const HandleLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          actionLoadProducts(context);
          actionLoadDataEnterprise();
          context.go('/');
        } else if (state is AuthUpdateData) {
          context.push('/update_data/${state.userId.toString()}');
        }
      },
      builder: (context, state) {
        if (state is AuthInitial || state is AuthError || state is AuthLoading || state is AuthUpdateData) {
          return LoadingOverlay(
            isLoading: state is AuthLoading,
            child: LoginScreen(isSuccess: state is! AuthError),
          );
        } else if (state is AuthEnterprises ||
            state is AuthBranches ||
            state is AuthEnterprisesLoading) {
          return LoadingOverlay(
            isLoading: state is AuthEnterprisesLoading,
            child: EnterprisesScreen(),
          );
        }
        return Container();
      },
    );
  }
}
