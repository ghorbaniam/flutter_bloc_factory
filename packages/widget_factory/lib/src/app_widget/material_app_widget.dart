import 'package:flutter/material.dart';
import '../theme/material/app_color_scheme.dart';
import '../theme/material/custom_text_theme.dart';

import 'app_widget.dart';

class MaterialAppWidget extends StatelessWidget implements AppWidget {
  final Widget home;
  final String title;

  const MaterialAppWidget({Key key, @required this.home, this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Factory Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: AppColorScheme().getDefaultColorScheme(),
        primaryColor: AppColorScheme().getDefaultColorScheme().primary,
        textTheme: MaterialTheme().textTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home,
    );
  }
}
