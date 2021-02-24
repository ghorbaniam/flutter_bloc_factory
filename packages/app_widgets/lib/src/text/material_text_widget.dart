import 'package:flutter/material.dart';

import 'base_text_widget.dart';

class MaterialTextWidget extends StatelessWidget implements BaseTextWidget {
  final String text;

  const MaterialTextWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('>>>>>>> A material text is created.');
    return Text(text);
  }
}
