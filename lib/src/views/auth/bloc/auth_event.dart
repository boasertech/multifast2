part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class LoginEvent extends AuthEvent {
  final bool? remember;

  LoginEvent({this.remember});
}

final class AutoLoginEvent extends AuthEvent {}

final class CloseSessionEvent extends AuthEvent {}
