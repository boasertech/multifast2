part of 'client_data_bloc.dart';

@immutable
sealed class ClientDataState {}

final class ClientDataInitial extends ClientDataState {}

final class LoadClientData extends ClientDataState {}
