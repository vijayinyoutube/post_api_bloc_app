part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class SendData extends HomepageEvent {
  final String name;
  final String job;

  SendData(this.name, this.job);
}
