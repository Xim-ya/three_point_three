import 'package:flutter/material.dart';
import 'package:three_point_three/src/constant/index.dart';

abstract final class AppTheme {
  static ThemeData basicTheme = ThemeData(
      splashFactory: NoSplash.splashFactory,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColor.blue,
          disabledBackgroundColor: AppColor.grey700,
          foregroundColor: AppColor.white,
          disabledForegroundColor: AppColor.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTextStyle.semiBold14,
        ),
      ));
}
