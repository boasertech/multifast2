part of 'quotation_cud_bloc.dart';

@immutable
sealed class QuotationCudEvent {}

final class CreateQuotationEvent extends QuotationCudEvent {
  final QuotationRequest request;

  CreateQuotationEvent(this.request);
}

final class DeleteQuotationEvent extends QuotationCudEvent {}
