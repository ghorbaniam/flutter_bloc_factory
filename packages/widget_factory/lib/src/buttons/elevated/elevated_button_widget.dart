import 'package:flutter/widgets.dart';
import '../elevated/material_elevated_botton_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ElevatedButtonWidget(
      {Key key, this.title = '', @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialElevatedButtonWidget(
      title: title,
      onPressed: onPressed,
    );
  }
}
