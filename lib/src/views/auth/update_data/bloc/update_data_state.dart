part of 'update_data_bloc.dart';

@immutable
sealed class UpdateDataState {}

final class UpdateDataInitial extends UpdateDataState {}

final class UpdateDataSuccess extends UpdateDataState {}

final class UpdateDataError extends UpdateDataState {
  final ErrorModel error;

  UpdateDataError(this.error);
}
