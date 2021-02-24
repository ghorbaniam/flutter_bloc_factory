import 'package:flutter/material.dart';
import 'base_switch_widget.dart';

class MaterialSwitchWidget extends StatelessWidget implements BaseSwitchWidget {
  final bool value;
  final ValueSetter<bool> onChanged;
  const MaterialSwitchWidget(this.value, this.onChanged) : super();

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.amber,
    );
  }
}
