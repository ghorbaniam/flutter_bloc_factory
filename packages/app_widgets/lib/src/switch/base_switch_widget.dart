import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class BaseSwitchWidget extends StatelessWidget {
  final bool value;
  final ValueSetter<bool> onChanged;

  const BaseSwitchWidget({Key key, this.value, this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
    );
  }
}
