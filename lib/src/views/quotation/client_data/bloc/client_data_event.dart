part of 'client_data_bloc.dart';

@immutable
sealed class ClientDataEvent {}

final class EditClientData extends ClientDataEvent {}

final class NewQuotationEvent extends ClientDataEvent {}

final class EditQuotationEvent extends ClientDataEvent {
  final QuotationSqliteModel request;
  final bool onlySee;

  EditQuotationEvent(this.request, {this.onlySee = false});
}

final class RegisterQuotationEvent extends ClientDataEvent {
  final bool isEdit;

  RegisterQuotationEvent(this.isEdit);
}

final class RegisterQuotationBdEvent extends ClientDataEvent {}

final class LoadQuotationEvent extends ClientDataEvent {}

final class ConsultDocumentEvent extends ClientDataEvent {
  final DocumentRequest request;

  ConsultDocumentEvent(this.request);
}
