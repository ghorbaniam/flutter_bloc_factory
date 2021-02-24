import 'dart:io';
import 'package:app_widgets/app_widgets.dart';
import 'package:flutter_app_bloc_test/app_material_factory.dart';

abstract class AppWidgetFactory implements WidgetFactory {
  static final AppWidgetFactory _instance = _internal();

  static AppWidgetFactory _internal() => getCurrentFactory();

  factory AppWidgetFactory() => _instance;

  static WidgetFactory getCurrentFactory() {
    if (Platform.isAndroid) {
      return AppCupertinoWidgetFactory();
    } else if (Platform.isIOS)
      return AppCupertinoWidgetFactory();
    else
      throw UnsupportedError('Unsupported target platform.');
  }
}

//Default cupertino widget factory in the package
class AppCupertinoWidgetFactory extends CupertinoWidgetFactory
    implements AppWidgetFactory {}
