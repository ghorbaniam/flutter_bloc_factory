import 'package:app_blocs/app_blocs.dart';
import 'package:app_widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_bloc_test/app_widget_factory.dart';
import 'package:flutter_app_bloc_test/bloc_event_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WidgetFactory _widgetFactory =
      FactoryBuilder().getMainFactory(factory: AppWidgetFactory());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(
        eventHandler: BlocEventHandler(),
      ),
      child: HomePage(
        title: 'Home Page',
        widgetFactory: _widgetFactory,
      ),
    );
  }

  void _handleChangeFactory(int value) {
    setState(() {
      if (value == 1) {
        _widgetFactory = FactoryBuilder().getMainFactory();
      } else if (value == 2) {
        _widgetFactory =
            FactoryBuilder().getMainFactory(factory: AppWidgetFactory());
      } else {
        _widgetFactory = FactoryBuilder().getMainFactory();
      }
    });
  }
}
