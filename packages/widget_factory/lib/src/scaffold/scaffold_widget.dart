import 'package:flutter/widgets.dart';
import '../scaffold/material_scaffold_widget.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  final String title;

  const ScaffoldWidget({Key key, this.title = '', @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialScaffoldWidget(
      child: child,
      title: title,
    );
  }
}
