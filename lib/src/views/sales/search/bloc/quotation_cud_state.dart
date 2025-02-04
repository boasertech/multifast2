part of 'quotation_cud_bloc.dart';

@immutable
sealed class QuotationCudState {}

final class QuotationCudInitial extends QuotationCudState {}

final class QuotationLoading extends QuotationCudState {}

final class QuotationSuccess extends QuotationCudState {}

final class QuotationError extends QuotationCudState {
  final ErrorModel error;

  QuotationError(this.error);
}
