part of 'widget_factory.dart';

class MaterialWidgetFactory implements DefaultWidgetFactory {
  @override
  ElevatedButtonWidget platformElevatedButton({String title, onPressed}) =>
      MaterialElevatedButtonWidget(title: title, onPressed: onPressed);

  @override
  ScaffoldWidget platformScaffold({Widget child, String title}) =>
      MaterialScaffoldWidget(child: child, title: title);

  @override
  TextFieldWidget platformTextField(
          {String labelText,
          String hintText,
          String errorText,
          TextDirection textDirection,
          TextInputType keyboardType,
          List<TextInputFormatter> formatters}) =>
      MaterialTextFieldWidget(
          labelText: labelText,
          hintText: hintText,
          errorText: errorText,
          textDirection: textDirection,
          formatters: formatters);

  @override
  AppWidget platformAppWidget(Widget home, String title) => MaterialAppWidget(home: home, title: title);
}
