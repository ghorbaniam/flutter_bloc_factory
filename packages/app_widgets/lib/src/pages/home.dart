import 'dart:ui';

import 'package:app_blocs/app_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_widgets/app_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage(
      {Key key,
      this.title,
      @required this.widgetFactory,
      this.handleChangeFactory})
      : super(key: key);

  final String title;
  final WidgetFactory widgetFactory;
  final Function handleChangeFactory;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool _switchValue = false;
  CounterBloc _counterBloc;
  int _groupValue = 1;

  @override
  Widget build(BuildContext context) {
    _counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocProvider<CounterBloc>(
      create: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: const Text('Material'),
                leading: Radio(
                  value: 1,
                  groupValue: _groupValue,
                  onChanged: _handleChangeFactory,
                ),
              ),
              ListTile(
                title: const Text('Cupertino'),
                leading: Radio(
                  value: 2,
                  groupValue: _groupValue,
                  onChanged: _handleChangeFactory,
                ),
              ),
              // ListTile(
              //   title: const Text('Custom'),
              //   leading: Radio(
              //     value: 3,
              //     groupValue: _groupValue,
              //     onChanged: _handleChangeFactory,
              //   ),
              // ),
              SizedBox(height: 100),
              widget.widgetFactory
                  .createSwitch(_switchValue, (v) => _switchValue = v),
              SizedBox(height: 40),
              Text('You have pushed the button this many times:'),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (_, state) {
                  if (state is Incremented) _counter = state.count;
                  if (state is Decremented) _counter = state.count;

                  return widget.widgetFactory.createText('$_counter');
                },
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () => _counterBloc..add(Decrement(_counter)),
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 50),
                    FloatingActionButton(
                      onPressed: () => _counterBloc..add(Increment(_counter)),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleChangeFactory(int value) {
    setState(() {
      widget.handleChangeFactory(value);
      _groupValue = value;
    });
  }
}
