import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle pretendardStyle(
          double size, double? height, double? letterSpacing) =>
      TextStyle(
        fontFamily: 'pretendard',
        leadingDistribution: TextLeadingDistribution.even,
        fontSize: size,
        letterSpacing:
            letterSpacing != null ? letterSpacing / 100 * size : null,
        height: height == null ? null : height / size,
      );

  static TextStyle pretendardMediumStyle(
          double size, double? height, double? letterSpacing) =>
      pretendardStyle(size, height, letterSpacing).copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle pretendardRegularStyle(
          double size, double? height, double? letterSpacing) =>
      pretendardStyle(size, height, letterSpacing).copyWith(
        fontWeight: FontWeight.w400,
      );

  static TextStyle pretendardSemiBoldStyle(
          double size, double? height, double? letterSpacing) =>
      pretendardStyle(size, height, letterSpacing).copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle pretendardBoldStyle(
          double size, double? height, double? letterSpacing) =>
      pretendardStyle(size, height, letterSpacing).copyWith(
        fontWeight: FontWeight.w800,
      );

  // static final TextStyle highlight = pretendardBoldStyle(32, 36);
  // static final TextStyle headline1 = pretendardBoldStyle(24, 33);
  static final TextStyle headline2 = pretendardBoldStyle(22, 33, null);
  // static final TextStyle headline3 = pretendardSemiBoldStyle(18, 24);
  // static final TextStyle title1 = pretendardBoldStyle(16, 22);
  // static final TextStyle title2 = pretendardSemiBoldStyle(16, 22)

  static final TextStyle regular16 = pretendardRegularStyle(16, 24, null);
  static final TextStyle bold16 = pretendardBoldStyle(16, 24, null);
  static final TextStyle bold14 = pretendardBoldStyle(14, 0, null);
  static final TextStyle semiBold14 = pretendardSemiBoldStyle(14, 0, null);
  static final TextStyle smilBold10 = pretendardSemiBoldStyle(10, 0, -0.8);
  static final TextStyle regular14 = pretendardRegularStyle(14, 0, null);

//   static final TextStyle body1 = pretendardSemiBoldStyle(14, 20);
//   static final TextStyle body2 = pretendardMediumStyle(14, 20);
//   static final TextStyle body3 = pretendardMediumStyle(13, 18);
//   static final TextStyle alert1 = pretendardSemiBoldStyle(12, 17);
//   static final TextStyle alert2 = pretendardStyle(12, 17);
// }
}
