part of 'trip_bloc.dart';

@immutable
sealed class TripEvent {}

final class ChangeScreenEvent extends TripEvent{}

final class SkipScreenEvent extends TripEvent{}
