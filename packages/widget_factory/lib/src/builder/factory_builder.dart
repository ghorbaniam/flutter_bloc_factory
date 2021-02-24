import '../factories/default_widget_factory.dart';
import '../factories/widget_factory.dart';

class FactoryBuilder {
  WidgetFactory getMainFactory({WidgetFactory factory}) {
    if (factory != null) {
      return factory;
    } else {
      return DefaultWidgetFactory();
    }
  }
}
