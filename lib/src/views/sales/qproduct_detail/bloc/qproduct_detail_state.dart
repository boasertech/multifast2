part of 'qproduct_detail_bloc.dart';

@immutable
sealed class QProductDetailState {}

final class QProductDetailInitial extends QProductDetailState {}

final class QProductDetailLoading extends QProductDetailState {}

final class QProductDetailLoad extends QProductDetailState {
  final QProductModel detail;
  final bool isScan;

  QProductDetailLoad(this.detail, this.isScan);
}

final class QProductDetailError extends QProductDetailState {
  final ErrorModel error;

  QProductDetailError(this.error);
}
