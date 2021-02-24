import 'counter_bloc.dart';

abstract class InterfaceCounterEventHandler {
  Stream<CounterState> mapIncrementToState(int count);
  Stream<CounterState> mapDecrementToState(int count);
}
