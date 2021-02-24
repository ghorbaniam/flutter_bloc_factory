import 'package:app_widgets/app_widgets.dart';
import 'package:app_widgets/src/switch/base_switch_widget.dart';
import 'package:app_widgets/src/factories/default_widget_factory.dart';
import 'package:app_widgets/src/switch/cupertino_switch_widget.dart';
import 'package:app_widgets/src/switch/material_switch.dart';
import 'package:app_widgets/src/text/cupertino_text_widget.dart';
import 'package:app_widgets/src/text/material_text_widget.dart';
import 'package:flutter/widgets.dart';

part 'material_widget_factory.dart';
part 'cupertino_widget_factory.dart';

abstract class WidgetFactory {
  BaseTextWidget createText(String value);
  BaseSwitchWidget createSwitch(bool value, ValueSetter<bool> onChanged);
}
