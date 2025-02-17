import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavScreenEvent>((event, emit) {
      if (event.route == '/sales') {
        emit(NavigationSalesScreen());
      } else if (event.route == '/home') {
        emit(NavigationHomeScreen());
      }
    });
  }
}
