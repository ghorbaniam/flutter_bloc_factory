import 'package:flutter/widgets.dart';
import '../factories/widget_factory.dart';

class LoginRoute extends StatelessWidget {
  final WidgetFactory widgetFactory;

  const LoginRoute({Key key, @required this.widgetFactory}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return widgetFactory.platformScaffold(
      title: 'ورود',
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widgetFactory.platformTextField(
              hintText: '911 222 33 44',
              labelText: 'شماره تلفن',
              keyboardType: TextInputType.phone,
              textDirection: TextDirection.ltr,
            ),
            Row(
              children: [
                Expanded(
                  child: widgetFactory.platformElevatedButton(
                    title: 'ورود',
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
