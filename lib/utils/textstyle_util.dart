import 'package:flutter/material.dart';
import 'package:flutter_gp/constants/export.dart';
import 'package:flutter_gp/utils/export.dart';
import 'package:flutter_gp/utils/navigator/export.dart';

class TextStyleUtil {
  static final _textTheme = Theme.of(NavigatorUtil.context).textTheme;

  static TextStyle sizeSmall({
    Color color = ColorConstants.blackColor,
    bool isBold = false,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color,
        fontSize: customFontSize(0.027),
        fontWeight: isBold ? FontWeight.bold : FontWeight.w400);
  }

  static TextStyle sizeMedium({
    Color color = ColorConstants.blackColor,
    bool isBold = false,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color,
        fontSize: customFontSize(0.034),
        fontWeight: isBold ? FontWeight.bold : FontWeight.w400);
  }

  static TextStyle sizeLarge({
    Color color = ColorConstants.blackColor,
    bool isBold = false,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color,
        fontSize: customFontSize(0.05),
        fontWeight: isBold ? FontWeight.bold : FontWeight.w400);
  }
  //(0.035) normal
  //customFontSize(0.055) large
//customFontSize(0.028) small
  // static TextStyle size14LabelLareg({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.labelLarge!.copyWith(
  //     fontSize: 14.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size16TitleMedium({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.titleMedium!.copyWith(
  //     fontSize: 16.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size22TitleLarge({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.titleLarge!.copyWith(
  //     fontSize: 22.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size20TitleLarge({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.titleLarge!.copyWith(
  //     fontSize: 20.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size24headlineSmall({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.headlineSmall!.copyWith(
  //     fontSize: 24.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size28headlineMedium({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.headlineMedium!.copyWith(
  //     fontSize: 28.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size32headlineLarge({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.headlineLarge!.copyWith(
  //     fontSize: 32.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size36DisplaySmall({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.displaySmall!.copyWith(
  //     fontSize: 36.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size45DisplayMedium({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.displayMedium!.copyWith(
  //     fontSize: 45.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }

  // static TextStyle size57DisplayLarge({
  //   Color? color,
  //   bool isBold = false,
  //   FontWeight? fontWeight,
  //   bool isPrimary = false,
  //   bool isOnPrimary = false,
  // }) {
  //   return _textTheme.displayLarge!.copyWith(
  //     fontSize: 57.sp,
  //     fontWeight: getFontEight(isBold, fontWeight),
  //     color: color ?? getColor(isPrimary, isOnPrimary),
  //   );
  // }
}
