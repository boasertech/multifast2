part of 'client_data_bloc.dart';

@immutable
sealed class ClientDataState {}

final class ClientDataInitial extends ClientDataState {}

final class LoadClientData extends ClientDataState {}

final class NewQuotationState extends ClientDataState {
  final bool isEdit;
  final bool onlySee;

  NewQuotationState(this.isEdit, {this.onlySee = false});
}

final class SuccessConsultDocument extends ClientDataState {}

final class SuccessSaveQuotation extends ClientDataState {}

final class LoadingConsultDocument extends ClientDataState {}

final class LoadQuotation extends ClientDataState {
  final List<QuotationSql> list;

  LoadQuotation(this.list);
}

final class ErrorClientData extends ClientDataState {
  final ErrorModel error;

  ErrorClientData(this.error);
}
