part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class HomepageLoading extends HomepageState {}

class HomepageLoaded extends HomepageState {
  final HomePageModel data;

  HomepageLoaded(this.data);
}

class HomepageError extends HomepageState {}
