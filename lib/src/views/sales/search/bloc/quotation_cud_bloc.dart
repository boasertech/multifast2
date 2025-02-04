import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/quotation.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/quotation_service.dart';

part 'quotation_cud_event.dart';
part 'quotation_cud_state.dart';

class QuotationCudBloc extends Bloc<QuotationCudEvent, QuotationCudState> {
  final QuotationService service;
  QuotationCudBloc({required this.service}) : super(QuotationCudInitial()) {
    on<CreateQuotationEvent>((event, emit) async {
      emit(QuotationLoading());
      final stopwatch = Stopwatch()..start();
      var response = await service.registerQuotation(event.request);
      stopwatch.stop();
      response.fold(
        (error) => emit(QuotationError(error)),
        (quotation) {
          emit(QuotationSuccess());
        },
      );
      Config.printDebug('RegisterQuotation - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
    });
  }
}
