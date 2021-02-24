import 'package:flutter/material.dart';

import 'scaffold_widget.dart';

class MaterialScaffoldWidget extends StatelessWidget implements ScaffoldWidget {
  final Widget child;
  final String title;

  const MaterialScaffoldWidget({Key key, this.title = '', @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarWidget(title: title),
      body: SafeArea(child: child),
    );
  }
}

class _AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasTextTitle;

  const _AppBarWidget({Key key, this.title, this.hasTextTitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getAppBar(context);
  }

  AppBar _getAppBar(BuildContext context, {bool isConnected = true}) {
    return AppBar(
      backgroundColor:
          isConnected ? Theme.of(context).primaryColor : Colors.grey,
      iconTheme: IconThemeData(
        color: Theme.of(context).colorScheme.surface,
      ),
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.button,
        overflow: TextOverflow.clip,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
