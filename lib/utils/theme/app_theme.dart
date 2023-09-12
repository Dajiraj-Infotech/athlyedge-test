import 'package:athlyedge/utils/config/app_config.dart';
import 'package:athlyedge/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData theme(Brightness brightness) {
    return ThemeData(
      /// PRIMARY COLORS
      primaryColor: AppConfig.instance.primaryColour,
      indicatorColor: AppConfig.instance.primaryColour,
      brightness: brightness,
      scaffoldBackgroundColor: brightness == Brightness.light
          ? ColorConstant.scaffoldBackgroundColourLight
          : ColorConstant.scaffoldBackgroundColourDark,
      canvasColor: brightness == Brightness.light
          ? ColorConstant.canvasColorLight
          : ColorConstant.canvasColorDark,

      /// checkbox
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStatePropertyAll(AppConfig.instance.primaryColour),
        shape: const CircleBorder(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),

      /// Snack bar
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppConfig.instance.primaryColour,
        contentTextStyle: TextStyle(
          color: brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),

      /// Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(AppConfig.instance.primaryColour),
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              color:
                  brightness == Brightness.light ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
