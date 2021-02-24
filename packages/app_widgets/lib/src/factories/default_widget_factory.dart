import 'dart:io';

import 'package:app_widgets/app_widgets.dart';

abstract class DefaultWidgetFactory implements WidgetFactory {
  static final WidgetFactory _instance = _internal();

  static WidgetFactory _internal() => getCurrentFactory();

  factory DefaultWidgetFactory() => _instance;

  static WidgetFactory getCurrentFactory() {
    if (Platform.isAndroid) {
      return MaterialWidgetFactory();
    } else if (Platform.isIOS)
      return CupertinoWidgetFactory();
    else
      throw UnsupportedError('Unsupported target platform.');
  }
}
