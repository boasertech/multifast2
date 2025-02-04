part of 'trip_bloc.dart';

@immutable
sealed class TripState {}

final class TripInitial extends TripState {}

final class TripScreen1 extends TripState {
  final TripData trip = TripData(AppCoreImages.tripScreen1, 'Fast Cloud: la solución que acelera tu éxito',
      'Gestiona ventas, inventarios y más desde una sola plataforma.', 196, 1);
}

final class TripScreen2 extends TripState {
  final TripData trip = TripData(AppCoreImages.tripScreen2, 'Tecnología que trabaja contigo',
      'Seguridad, personalización y actualizaciones automáticas para facilitar tu gestión.', 258, 1.6);
}

final class TripScreen3 extends TripState {
  final TripData trip = TripData(AppCoreImages.tripScreen3, 'Confianza respaldada por resultados',
      'Miles de empresas optimizan sus procesos con Fast Cloud.', 210, 1.6);
}

final class TripScreenVersion extends TripState {}

final class TripInitApp extends TripState {}

