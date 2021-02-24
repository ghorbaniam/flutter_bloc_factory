part of 'widget_factory.dart';

class MaterialWidgetFactory implements DefaultWidgetFactory {
  @override
  createSwitch(bool value, ValueSetter<bool> onChanged) =>
      MaterialSwitchWidget(value, onChanged);

  @override
  createText(String value) => MaterialTextWidget(text: value);
}
