part of 'qproduct_detail_bloc.dart';

@immutable
sealed class QProductDetailEvent {}

final class LoadQProductDetailEvent extends QProductDetailEvent {
  final QProductDetailRequest request;
  final QProductModel model;
  final bool isScan;
  final bool isQuotation;

  LoadQProductDetailEvent(this.request, this.model, this.isQuotation, {this.isScan = false});
}
