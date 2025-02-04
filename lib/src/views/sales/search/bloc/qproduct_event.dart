part of 'qproduct_bloc.dart';

@immutable
sealed class QProductsEvent {}

final class LoadedQProducts extends QProductsEvent {
  final QProductRequest request;

  LoadedQProducts(this.request);
}

final class SearchQProducts extends QProductsEvent {
  final String? name;

  SearchQProducts({this.name});
}

final class FoundQProducts extends QProductsEvent {
  final String name;

  FoundQProducts(this.name);
}

final class ReturnQProducts extends QProductsEvent {}
