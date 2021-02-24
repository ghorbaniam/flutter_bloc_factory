
import 'package:flutter/cupertino.dart';
import '../theme/cupertino/app_cupertino_theme.dart';
import '../theme/material/app_color_scheme.dart';

import 'app_widget.dart';

class CupertinoAppWidget extends StatelessWidget implements AppWidget {
  final Widget home;
  final String title;

  const CupertinoAppWidget({Key key, @required this.home, this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: title,
      color: AppColorScheme().getDefaultColorScheme().primary,
      theme: AppCupertinoTheme().cupertinoThemeData(context),
      home: home,
    );
  }
}
