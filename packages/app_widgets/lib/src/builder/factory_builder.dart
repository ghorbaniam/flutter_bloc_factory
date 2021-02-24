import 'package:app_widgets/app_widgets.dart';
import 'package:app_widgets/src/factories/default_widget_factory.dart';

class FactoryBuilder {
  WidgetFactory getMainFactory({WidgetFactory factory}) {
    if (factory != null) {
      return factory;
    } else {
      return DefaultWidgetFactory();
    }
  }
}
