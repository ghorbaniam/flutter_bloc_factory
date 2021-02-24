part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increment implements CounterEvent {
  final int value;

  Increment(this.value);
}

class Decrement implements CounterEvent {
  final int value;

  Decrement(this.value);
}
