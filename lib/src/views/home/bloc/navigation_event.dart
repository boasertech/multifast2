part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

final class NavScreenEvent extends NavigationEvent {
  final String route;

  NavScreenEvent(this.route);
}

final class CloseNavigation extends NavigationEvent {}