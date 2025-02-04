part of 'qproduct_bloc.dart';

@immutable
sealed class QProductsState {}

final class QProductsInitial extends QProductsState {}

final class QProductsLoading extends QProductsState {}

final class QProductsLoad extends QProductsState {}

final class QProductsSearch extends QProductsState {
  final List<QProductModel> searchList;
  final String searchWord;

  QProductsSearch(this.searchList, this.searchWord);
}

final class QProductsFound extends QProductsState {
  final List<QProductModel> foundList;

  QProductsFound(this.foundList);
}

final class QProductsError extends QProductsState {
  final ErrorModel error;

  QProductsError(this.error);
}
