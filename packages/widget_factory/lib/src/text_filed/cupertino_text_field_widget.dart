import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'text_field_widget.dart';

class CupertinoTextFieldWidget extends StatelessWidget
    implements TextFieldWidget {
  final String labelText;
  final String hintText;
  final String errorText;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final TextDirection textDirection;

  const CupertinoTextFieldWidget(
      {Key key,
      this.labelText,
      this.hintText,
      this.errorText,
      this.formatters,
      this.keyboardType,
      this.textDirection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: hintText,
      keyboardType: keyboardType,
      inputFormatters: formatters,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    );
  }
}
