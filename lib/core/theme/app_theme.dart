import 'package:flutter/material.dart';
import 'package:wrapcast/core/theme/color_pallete.dart';
import 'package:wrapcast/core/theme/custom_themes/text_theme.dart';

class TAppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: ColorPallete.aBgBlackColor,
  );
}
