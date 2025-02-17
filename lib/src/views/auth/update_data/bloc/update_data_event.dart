part of 'update_data_bloc.dart';

@immutable
sealed class UpdateDataEvent {}

final class UpdateUserEvent extends UpdateDataEvent {
  final UserUpdateRequest request;

  UpdateUserEvent(this.request);
}
