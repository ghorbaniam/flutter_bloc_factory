import 'package:flutter/cupertino.dart';
import '../material/app_color_scheme.dart';
import '../material/theme_const.dart';

class AppCupertinoTheme{
  CupertinoThemeData cupertinoThemeData(BuildContext context) => CupertinoThemeData(
    brightness: Brightness.light,

    textTheme: CupertinoTextThemeData(
      textStyle: CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      actionTextStyle: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      tabLabelTextStyle: CupertinoTheme.of(context).textTheme.tabLabelTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      navTitleTextStyle: CupertinoTheme.of(context).textTheme.navTitleTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      navLargeTitleTextStyle: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      navActionTextStyle: CupertinoTheme.of(context).textTheme.navActionTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      pickerTextStyle: CupertinoTheme.of(context).textTheme.pickerTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      dateTimePickerTextStyle: CupertinoTheme.of(context).textTheme.dateTimePickerTextStyle.copyWith(fontFamily: ThemeConstants.fontFamily),
      primaryColor: AppColorScheme().getDefaultColorScheme().primary,
    ),
  );
}