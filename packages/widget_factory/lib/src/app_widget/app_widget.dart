import 'package:flutter/widgets.dart';
import '../app_widget/material_app_widget.dart';

class AppWidget extends StatelessWidget {
  final Widget home;
  final String title;

  const AppWidget({Key key, @required this.home, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialAppWidget(home: home, title: title);
  }
}
