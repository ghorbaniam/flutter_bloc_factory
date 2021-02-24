import 'dart:io';

import '../factories/widget_factory.dart';

abstract class DefaultWidgetFactory implements WidgetFactory {
  static final WidgetFactory _instance = _internal();

  static WidgetFactory _internal() => getCurrentFactory();

  factory DefaultWidgetFactory() => _instance;

  static WidgetFactory getCurrentFactory() {
    if (Platform.isAndroid) {
      return MaterialWidgetFactory();
    } else if (Platform.isIOS) {
      return CupertinoWidgetFactory();
    } else
      throw UnsupportedError('Unsupported target platform.');
  }
}
