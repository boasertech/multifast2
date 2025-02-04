import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproducts.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/category_repository.dart';
import 'package:multifast/src/repositories/internal/recent_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';
import 'package:rxdart/rxdart.dart';

part 'qproduct_event.dart';
part 'qproduct_state.dart';

class QProductsBloc extends Bloc<QProductsEvent, QProductsState> {
  final AbsQProductService service;
  final repository = getIt<ProductRepository>();
  final TextEditingController searchController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  QProductsBloc({required this.service}) : super(QProductsInitial()) {
    on<LoadedQProducts>((event, emit) async {
      emit(QProductsLoading());
      final stopwatch = Stopwatch()..start();
      var response = await service.getProducts(event.request);
      stopwatch.stop();
      response.fold(
        (error) => emit(QProductsError(error)),
        (qproducts) {
          repository.saveList(qproducts);
          final repoCategories = getIt<CategoryRepository>();
          repoCategories.saveList(repoCategories.convertProductsToCategories(repository.list));
          getIt<RecentRepository>().loadRecentSearches();
          repository.initStream();
          emit(QProductsLoad());
        },
      );
      Config.printDebug('GetQProducts(${repository.list.length}) - Time: ${stopwatch.elapsedMilliseconds} ms');
    });

    on<ReturnQProducts>((event, emit) async {
      emit(QProductsLoad());
    });

    on<SearchQProducts>(
      (event, emit) async {
        //final list = repository.search(event.name ?? '');
        //emit(QProductsSearch(list, event.name ?? ''));
      },
      transformer: (events, mapper) {
        return events.debounceTime(const Duration(milliseconds: 200)).flatMap(mapper);
      },
    );

    on<FoundQProducts>(
      (event, emit) async {
        if (event.name.isEmpty) {
          repository.initStream();
          emit(QProductsLoad());
        } else {
          //final listFound = repository.search(event.name, isFound: true);
          //emit(QProductsFound(listFound));
        }
      },
      transformer: (events, mapper) {
        return events.debounceTime(const Duration(milliseconds: 200)).flatMap(mapper);
      },
    );
  }
}
