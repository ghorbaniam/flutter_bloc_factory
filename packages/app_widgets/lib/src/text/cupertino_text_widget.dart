import 'package:flutter/cupertino.dart';
import 'base_text_widget.dart';

class CupertinoTextWidget extends StatelessWidget implements BaseTextWidget {
  final String text;

  const CupertinoTextWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('>>>>>>> A cupertino text is created.');
    return Text(text, style: TextStyle(color: CupertinoColors.activeOrange));
  }
}
