import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'trip_event.dart';
part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  TripBloc() : super(TripInitial()) {
    on<ChangeScreenEvent>((event, emit) async {
      if (state is TripScreen1) {
        emit(TripScreen2());
      } else if (state is TripScreen2) {
        emit(TripScreen3());
      } else if (state is TripScreen3) {
        await saveSkip();
        emit(TripScreenVersion());
        await Future.delayed(Duration(seconds: 3));
        emit(TripInitApp());
      }
    });

    on<SkipScreenEvent>((event, emit) async {
      final skip = await skipIntro();
      if (skip) {
        emit(TripScreenVersion());
        await Future.delayed(Duration(seconds: 3));
        emit(TripInitApp());
      } else {
        emit(TripScreen1());
      }
    });
  }

  Future<bool> skipIntro() async {
    final prefs = await SharedPreferences.getInstance();
    final isSkip = prefs.getBool('skipIntro') ?? false;
    return isSkip;
  }

  Future<void> saveSkip() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('skipIntro', true);
  }
}

class TripData {
  final String image;
  final String title;
  final String subTitle;
  final double height;
  final double scale;

  TripData(this.image, this.title, this.subTitle, this.height, this.scale);
}
