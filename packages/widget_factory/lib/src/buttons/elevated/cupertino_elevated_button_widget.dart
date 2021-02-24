import 'package:flutter/cupertino.dart';
import '../elevated/elevated_button_widget.dart';

class CupertinoElevatedButtonWidget extends StatelessWidget
    implements ElevatedButtonWidget {
  final String title;
  final VoidCallback onPressed;

  const CupertinoElevatedButtonWidget(
      {Key key, this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
      ),
    );
  }
}
