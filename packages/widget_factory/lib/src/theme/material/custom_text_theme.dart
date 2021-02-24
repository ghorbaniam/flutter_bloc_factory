import 'package:flutter/material.dart';
import '../material/app_color_scheme.dart';
import '../material/theme_const.dart';

class MaterialTheme{
  final _colorScheme = AppColorScheme().getDefaultColorScheme();

  TextTheme get textTheme => TextTheme(
  // * bodyText1 -- old term was body2
  bodyText1: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['bodyText1'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['bodyText1'].fontWeight,
  ),

  // * bodyText2 -- old term was body1
  bodyText2: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['bodyText2'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['bodyText2'].fontWeight,
  color: _colorScheme.secondaryVariant,
  ),

  // * H1 headline -- old term was display4
  headline1: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['headline1'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['headline1'].fontWeight,
  ),

  // * H2 headline -- old term was display3
  headline2: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['headline2'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['headline2'].fontWeight,
  ),

  // * H3 headline -- old term was display2
  headline3: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['headline3'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['headline3'].fontWeight,
  ),

  // * H4 headline -- old term was display1
  headline4: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['bodyText2'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['bodyText2'].fontWeight,
  color: _colorScheme.secondaryVariant,
  fontStyle: FontStyle.italic,
  ),

  // * H5 headline -- old term was headline
  headline5: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['headline5'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['headline5'].fontWeight,
  ),

  // * H6 headline -- old term was title
  headline6: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['headline6'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['headline6'].fontWeight,
  ),

  // Button
  button: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['button'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['button'].fontWeight,
  color: _colorScheme.surface,
  ),

  // Caption
  caption: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['caption'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['caption'].fontWeight,
  color: _colorScheme.secondaryVariant,
  ),

  // Overline
  overline: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['overline'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['overline'].fontWeight,
  color: _colorScheme.secondaryVariant,
  ),

  // * subtitle1 -- old term was subtitle
  // ! there's an empty room for Subtitle1 to define new text theme
  subtitle1: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['subtitle1'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['subtitle1'].fontWeight,
  color: _colorScheme.onSurface,
  ),

  // * Subtitle2 -- old term was subtitle
  subtitle2: TextStyle(
  fontFamily: ThemeConstants.fontFamily,
  fontSize: ThemeConstants.fontTextAttribute['subtitle2'].fontSize,
  fontWeight: ThemeConstants.fontTextAttribute['subtitle2'].fontWeight,
  color: _colorScheme.secondary,
  ),
  );

}
