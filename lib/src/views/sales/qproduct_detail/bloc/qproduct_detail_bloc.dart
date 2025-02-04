import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/services/abs_qproduct_detail_service.dart';

part 'qproduct_detail_event.dart';
part 'qproduct_detail_state.dart';

class QProductDetailBloc extends Bloc<QProductDetailEvent, QProductDetailState> {
  final AbsQProductDetailService service;
  QProductDetailBloc({required this.service}) : super(QProductDetailInitial()) {
    on<LoadQProductDetailEvent>((event, emit) async {
      emit(QProductDetailLoading());
      final stopwatch = Stopwatch()..start();
      var response = await service.getQProductDetail(event.request);
      stopwatch.stop();
      response.fold(
        (error) => emit(QProductDetailError(error)),
        (detail) {
          event.model.detail = detail;
          emit(QProductDetailLoad(event.model));
        },
      );
      Config.printDebug('GetQProductDetail - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
    });
  }
}
