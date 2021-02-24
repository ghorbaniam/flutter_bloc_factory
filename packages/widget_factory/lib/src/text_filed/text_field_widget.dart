import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'material_text_field_widget.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String errorText;
  final TextDirection textDirection;
  final TextInputType keyboardType;
  final List<TextInputFormatter> formatters;

  const TextFieldWidget(
      {Key key,
      this.labelText,
      this.hintText,
      this.errorText,
      this.formatters,
      this.textDirection,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialTextFieldWidget(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      formatters: formatters,
      textDirection: textDirection,
      keyboardType: keyboardType,
    );
  }
}
