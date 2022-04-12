import 'package:flutter/material.dart';

class CustomTextStyle {
  ///FontSize:32
  static TextStyle h1({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 32,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );

  ///FontSize:24
  static TextStyle h2({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 24,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );

  ///FontSize:18.72
  static TextStyle h3({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 18.72,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );

  ///FontSize:16
  static TextStyle h4({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 16,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );

  ///FontSize:13.28
  static TextStyle h5({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 13.28,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );

  ///FontSize:10.72
  static TextStyle h6({
    TextStyleP textStyleP = const TextStyleP(),
  }) =>
      TextStyle(
        height: textStyleP.height,
        fontSize: textStyleP.fontSize ?? 10.72,
        color: textStyleP.color,
        fontWeight: textStyleP.fontWeight,
        fontStyle: textStyleP.fontStyle,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: textStyleP.shadowColor,
            offset: const Offset(5.0, 5.0),
          ),
        ],
      );
}

class TextStylePConstants {
  static const Color color = Colors.black;
  static const double height = 1;
  static const FontWeight fontWeight = FontWeight.normal;
  static const FontStyle fontStyle = FontStyle.normal;
  static const Color shadowColor = Colors.transparent;
}

class TextStyleP {
  final Color color;
  final double height;
  final double? fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color shadowColor;

  const TextStyleP({
    this.color = TextStylePConstants.color,
    this.height = TextStylePConstants.height,
    this.fontSize,
    this.fontWeight = TextStylePConstants.fontWeight,
    this.fontStyle = TextStylePConstants.fontStyle,
    this.shadowColor = TextStylePConstants.shadowColor,
  });
}
