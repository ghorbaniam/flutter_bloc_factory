import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../app_widget/app_widget.dart';
import '../app_widget/cupertino_app_widget.dart';
import '../app_widget/material_app_widget.dart';
import '../buttons/elevated/cupertino_elevated_button_widget.dart';
import '../buttons/elevated/elevated_button_widget.dart';
import '../buttons/elevated/material_elevated_botton_widget.dart';
import '../scaffold/cupertino_scaffold_widget.dart';
import '../scaffold/material_scaffold_widget.dart';
import '../scaffold/scaffold_widget.dart';
import '../text_filed/cupertino_text_field_widget.dart';
import '../text_filed/material_text_field_widget.dart';
import '../text_filed/text_field_widget.dart';
import 'default_widget_factory.dart';

part 'material_widget_factory.dart';
part 'cupertino_widget_factory.dart';

abstract class WidgetFactory {
  TextFieldWidget platformTextField(
      {String labelText,
      String hintText,
      String errorText,
      TextDirection textDirection,
      TextInputType keyboardType,
      List<TextInputFormatter> formatters});
  ScaffoldWidget platformScaffold({Widget child, String title});
  ElevatedButtonWidget platformElevatedButton(
      {String title, VoidCallback onPressed});
  AppWidget platformAppWidget(Widget home, String title);
}
