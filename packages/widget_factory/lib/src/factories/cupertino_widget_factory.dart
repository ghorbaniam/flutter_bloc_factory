part of 'widget_factory.dart';

class CupertinoWidgetFactory implements DefaultWidgetFactory {
  @override
  ElevatedButtonWidget platformElevatedButton({String title, onPressed}) =>
      CupertinoElevatedButtonWidget(title: title, onPressed: onPressed);

  @override
  ScaffoldWidget platformScaffold({Widget child, String title}) =>
      CupertinoScaffoldWidget(child: child, title: title);

  @override
  TextFieldWidget platformTextField(
          {String labelText,
          String hintText,
          String errorText,
          TextDirection textDirection,
          TextInputType keyboardType,
          List<TextInputFormatter> formatters}) =>
      CupertinoTextFieldWidget(
          labelText: labelText,
          hintText: hintText,
          errorText: errorText,
          textDirection: textDirection,
          formatters: formatters);

  @override
  AppWidget platformAppWidget(Widget home, String title) => CupertinoAppWidget(
        home: home,
        title: title,
      );
}
