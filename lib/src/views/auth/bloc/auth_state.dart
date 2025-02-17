part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthEnterprisesLoading extends AuthState {}

final class AuthSuccess extends AuthState {}

final class AuthEnterprises extends AuthState {}

final class AuthBranches extends AuthState {}

final class AuthError extends AuthState {
  final ErrorModel error;

  AuthError(this.error);
}

final class AuthAutoLogin extends AuthState {}

final class AuthUpdateData extends AuthState {
  final int userId;

  AuthUpdateData(this.userId);
}
