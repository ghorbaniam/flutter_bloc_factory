import 'interface_counter_event_handler.dart';
import 'counter_bloc.dart';

class CounterEventHandler implements InterfaceCounterEventHandler {
  @override
  Stream<CounterState> mapDecrementToState(int count) async* {
    yield Incremented(--count);
  }

  @override
  Stream<CounterState> mapIncrementToState(int count) async* {
    yield Decremented(++count);
  }
}
