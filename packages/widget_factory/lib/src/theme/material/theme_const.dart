import 'dart:ui';

import 'package:meta/meta.dart';

class TextStyles {
  final String textStyleName;
  final TextAttribute textStyleAttribute;

  const TextStyles(
      {@required this.textStyleName, @required this.textStyleAttribute});
}

class TextAttribute {
  final double fontSize;
  final FontWeight fontWeight;

  const TextAttribute({@required this.fontSize, @required this.fontWeight});
}

class ThemeConstants {
  static const fontFamily = 'Dana';

  static const Map<String, TextAttribute> fontTextAttribute = {
    'bodyText1': TextAttribute(fontSize: 16, fontWeight: FontWeight.w400),
    'bodyText2': TextAttribute(fontSize: 14, fontWeight: FontWeight.w400),
    'headline1': TextAttribute(fontSize: 44, fontWeight: FontWeight.w300),
    'headline2': TextAttribute(fontSize: 36, fontWeight: FontWeight.w400),
    'headline3': TextAttribute(fontSize: 32, fontWeight: FontWeight.w700),
    'headline4': TextAttribute(fontSize: 28, fontWeight: FontWeight.w400),
    'headline5': TextAttribute(fontSize: 24, fontWeight: FontWeight.w400),
    'headline6': TextAttribute(fontSize: 20, fontWeight: FontWeight.w400),
    'button': TextAttribute(fontSize: 14, fontWeight: FontWeight.w700),
    'caption': TextAttribute(fontSize: 12, fontWeight: FontWeight.w400),
    'overline': TextAttribute(fontSize: 11, fontWeight: FontWeight.w400),
    'subtitle1': TextAttribute(fontSize: 12, fontWeight: FontWeight.w700),
    'subtitle2': TextAttribute(fontSize: 14, fontWeight: FontWeight.w700),
  };
}
