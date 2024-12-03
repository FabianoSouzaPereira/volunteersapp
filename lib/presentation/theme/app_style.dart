import 'package:flutter/material.dart';

class AppStyle extends ThemeExtension<AppStyle> {
  final Color primaryColor;
  final Color whiteLabelBackgroundColor;
  final Color whiteLabelSecondaryColor;
  final Color lightenPrimaryColor;
  final Color iconColor;
  final Color textColor;
  final Color shapeBackgroundColor;
  final Color backgroundColor;
  final Color iconButtonBackgroundColor;
  final LinearGradient primaryGradient;
  final Color linkColor;
  final Color placeholderColor;
  final Color buttonActiveColor;
  final Color buttonInactiveColor;
  final BoxShadow boxShadow;
  final Color checkboxColor;
  final LinearGradient videoPlayerGradient;

  AppStyle({
    required this.primaryColor,
    required this.whiteLabelBackgroundColor,
    required this.whiteLabelSecondaryColor,
    required this.lightenPrimaryColor,
    required this.iconColor,
    required this.textColor,
    required this.shapeBackgroundColor,
    required this.backgroundColor,
    required this.iconButtonBackgroundColor,
    required this.primaryGradient,
    required this.linkColor,
    required this.placeholderColor,
    required this.buttonActiveColor,
    required this.buttonInactiveColor,
    required this.boxShadow,
    required this.checkboxColor,
    required this.videoPlayerGradient,
  });

  @override
  ThemeExtension<AppStyle> copyWith({
    Color? primaryColor,
    Color? whiteLabelBackgroundColor,
    Color? whiteLabelSecondaryColor,
    LinearGradient? loginGradientScaffold,
    Color? lightenPrimaryColor,
    Color? textColor,
    Color? shapeBackgroundColor,
    Color? backgroundColor,
    Color? iconButtonBackgroundColor,
    LinearGradient? primaryGradient,
    Color? linkColor,
    Color? iconColor,
    Color? placeholderColor,
    Color? buttonActiveColor,
    Color? buttonInactiveColor,
    BoxShadow? boxShadow,
    Color? checkboxColor,
    LinearGradient? videoPlayerGradient,
  }) =>
      AppStyle(
          primaryColor: primaryColor ?? this.primaryColor,
          whiteLabelBackgroundColor: whiteLabelBackgroundColor ?? this.whiteLabelBackgroundColor,
          whiteLabelSecondaryColor: whiteLabelSecondaryColor ?? this.whiteLabelSecondaryColor,
          lightenPrimaryColor: lightenPrimaryColor ?? this.lightenPrimaryColor,
          textColor: textColor ?? this.textColor,
          shapeBackgroundColor: shapeBackgroundColor ?? this.shapeBackgroundColor,
          backgroundColor: backgroundColor ?? this.backgroundColor,
          iconButtonBackgroundColor: iconButtonBackgroundColor ?? this.iconButtonBackgroundColor,
          primaryGradient: primaryGradient ?? this.primaryGradient,
          linkColor: linkColor ?? this.linkColor,
          iconColor: iconColor ?? this.iconColor,
          placeholderColor: placeholderColor ?? this.placeholderColor,
          buttonActiveColor: buttonActiveColor ?? this.buttonActiveColor,
          buttonInactiveColor: buttonInactiveColor ?? this.buttonInactiveColor,
          boxShadow: boxShadow ?? this.boxShadow,
          checkboxColor: checkboxColor ?? this.checkboxColor,
          videoPlayerGradient: videoPlayerGradient ?? this.videoPlayerGradient);

  @override
  ThemeExtension<AppStyle> lerp(ThemeExtension<AppStyle>? other, double t) {
    if (other is! AppStyle) {
      return this;
    }

    return AppStyle(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      whiteLabelBackgroundColor: Color.lerp(whiteLabelBackgroundColor, other.whiteLabelBackgroundColor, t)!,
      whiteLabelSecondaryColor: Color.lerp(whiteLabelSecondaryColor, other.whiteLabelSecondaryColor, t)!,
      lightenPrimaryColor: Color.lerp(lightenPrimaryColor, other.lightenPrimaryColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      shapeBackgroundColor: Color.lerp(shapeBackgroundColor, other.shapeBackgroundColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      iconButtonBackgroundColor: Color.lerp(iconButtonBackgroundColor, other.iconButtonBackgroundColor, t)!,
      primaryGradient: LinearGradient.lerp(primaryGradient, other.primaryGradient, t)!,
      linkColor: Color.lerp(linkColor, other.linkColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      placeholderColor: Color.lerp(placeholderColor, other.placeholderColor, t)!,
      buttonActiveColor: Color.lerp(buttonActiveColor, other.buttonActiveColor, t)!,
      buttonInactiveColor: Color.lerp(buttonInactiveColor, other.buttonInactiveColor, t)!,
      boxShadow: BoxShadow.lerp(boxShadow, other.boxShadow, t)!,
      checkboxColor: Color.lerp(placeholderColor, other.placeholderColor, t)!,
      videoPlayerGradient: LinearGradient.lerp(videoPlayerGradient, other.videoPlayerGradient, t)!,
    );
  }
}
