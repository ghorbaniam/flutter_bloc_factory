import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'interface_counter_event_handler.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final InterfaceCounterEventHandler eventHandler;
  CounterBloc({this.eventHandler}) : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Increment)
      yield* eventHandler.mapIncrementToState(event.value);
    if (event is Decrement)
      yield* eventHandler.mapDecrementToState((event.value));
  }
}
