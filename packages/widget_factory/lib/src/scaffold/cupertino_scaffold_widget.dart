import 'package:flutter/cupertino.dart';
import '../scaffold/scaffold_widget.dart';

class CupertinoScaffoldWidget extends StatelessWidget
    implements ScaffoldWidget {
  final Widget child;
  final String title;

  const CupertinoScaffoldWidget({Key key, this.title, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(child: child),
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
    );
  }
}
