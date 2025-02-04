part of 'qproduct_detail_bloc.dart';

@immutable
sealed class QProductDetailEvent {}

final class LoadQProductDetailEvent extends QProductDetailEvent {
  final QProductDetailRequest request;
  final QProductModel model;

  LoadQProductDetailEvent(this.request, this.model);
}
