part of 'widget_factory.dart';

class CupertinoWidgetFactory implements DefaultWidgetFactory {
  @override
  createSwitch(bool value, ValueSetter<bool> onChanged) =>
      CupertinoSwitchWidget(value: value, onChanged: onChanged);

  @override
  createText(String value) => CupertinoTextWidget(text: value);
}
