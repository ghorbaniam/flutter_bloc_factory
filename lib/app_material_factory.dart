import 'package:app_widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_test/app_widget_factory.dart';

class AppCustomMaterialWidgetFactory extends MaterialWidgetFactory
    implements AppWidgetFactory {
  //Only overwrite create text and use other methods from parent class
  @override
  createText(String value) => AppMaterialTextWidget(
        text: value,
      );
}

class AppMaterialTextWidget extends StatelessWidget implements BaseTextWidget {
  final String text;

  const AppMaterialTextWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('>>>>>>> App material custom text is created.');
    return Text(
      text,
      style: TextStyle(color: Colors.blue, fontSize: 20),
    );
  }
}
