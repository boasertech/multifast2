import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:multifast/src/generated/user.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_user_service.dart';

part 'update_data_event.dart';
part 'update_data_state.dart';

class UpdateDataBloc extends Bloc<UpdateDataEvent, UpdateDataState> {
  final AbsUserService service;

  UpdateDataBloc({required this.service}) : super(UpdateDataInitial()) {
    on<UpdateUserEvent>((event, emit) async {
      final result = await service.updateUser(event.request);
      result.fold(
        (error) => emit(UpdateDataError(error)),
        (update) {
          emit(UpdateDataSuccess());
        },
      );
    });
  }
}
