part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class Incremented extends CounterState {
  final int count;

  Incremented(this.count);
}

class Decremented extends CounterState {
  final int count;

  Decremented(this.count);
}
