import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'text_field_widget.dart';

class MaterialTextFieldWidget extends StatelessWidget
    implements TextFieldWidget {
  final String labelText;
  final String hintText;
  final String errorText;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final TextDirection textDirection;

  const MaterialTextFieldWidget(
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
    return TextFormField(
      textDirection: textDirection,
      keyboardType: keyboardType,
      style: Theme.of(context).textTheme.subtitle2,
      decoration: InputDecoration(
        labelStyle: Theme.of(context).textTheme.overline,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        labelText: labelText,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.overline,
        errorText: errorText,
        helperText: ' ',
      ),
      inputFormatters: formatters,
    );
  }
}
