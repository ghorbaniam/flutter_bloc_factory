import 'package:flutter/material.dart';
import '../elevated/elevated_button_widget.dart';

class MaterialElevatedButtonWidget extends StatelessWidget
    implements ElevatedButtonWidget {
  final String title;
  final VoidCallback onPressed;

  const MaterialElevatedButtonWidget(
      {Key key, this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      disabledColor: Theme.of(context).colorScheme.secondaryVariant,
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
