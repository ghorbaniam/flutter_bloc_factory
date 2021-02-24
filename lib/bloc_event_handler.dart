import 'package:app_blocs/app_blocs.dart';

class BlocEventHandler extends CounterEventHandler {
  @override
  Stream<CounterState> mapIncrementToState(int count) async* {
    yield Decremented(count + 2);
  }
}
