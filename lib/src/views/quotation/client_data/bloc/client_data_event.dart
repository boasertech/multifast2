part of 'client_data_bloc.dart';

@immutable
sealed class ClientDataEvent {}

final class EditClientData extends ClientDataEvent {}