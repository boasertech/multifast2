part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitial extends NavigationState {}

final class NavigationScreen extends NavigationState {
  final String route;

  NavigationScreen(this.route);
}

final class NavigationHomeScreen extends NavigationState {}

final class NavigationSalesScreen extends NavigationState {}

final class NavigationDailyCashScreen extends NavigationState {}

final class NavigationStoreScreen extends NavigationState {}
