import 'package:flutter/cupertino.dart';
import 'base_switch_widget.dart';

class CupertinoSwitchWidget extends StatelessWidget
    implements BaseSwitchWidget {
  final bool value;
  final ValueSetter<bool> onChanged;
  const CupertinoSwitchWidget({Key key, @required this.value, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
    );
  }
}
