import 'package:flutter/widgets.dart';

abstract class BaseTextWidget extends StatelessWidget {
  final String text;

  const BaseTextWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
