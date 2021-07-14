part of '../utils.dart';

extension TextStyleExtension on TextStyle {
  ///height: 1
  TextStyle get heightCenter => this.copyWith(height: 1);

  ///height: 1.2
  TextStyle get heightCompact => this.copyWith(height: 1.2);

  ///height: 1.5
  TextStyle get heightRegular => this.copyWith(height: 1.5);

  ///height: 1.7
  TextStyle get heightMedium => this.copyWith(height: 1.7);

  ///height: 2
  TextStyle get heightLong => this.copyWith(height: 2);

  ///fontWeight: w800
  TextStyle get weightExtraBold => this.copyWith(fontWeight: FontWeight.w800);

  ///fontWeight: w700
  TextStyle get weightBold => this.copyWith(fontWeight: FontWeight.w700);

  ///fontWeight: w600
  TextStyle get weightSemibold => this.copyWith(fontWeight: FontWeight.w600);

  ///fontWeight: w500
  TextStyle get weightMedium => this.copyWith(fontWeight: FontWeight.w500);

  ///fontWeight: w400
  TextStyle get weightRegular => this.copyWith(fontWeight: FontWeight.w400);

  ///spacing: 0
  TextStyle get spacingRegular => this.copyWith(letterSpacing: 0);

  ///spacing: 0.6
  TextStyle get spacingMedium => this.copyWith(letterSpacing: 0.6);

  ///spacing: 1
  TextStyle get spacingExtend => this.copyWith(letterSpacing: 1);

  ///fontSize: 10
  TextStyle get sizeXXSmall => this.copyWith(fontSize: 10);

  ///fontSize: 12
  TextStyle get sizeXSmall => this.copyWith(fontSize: 12);

  ///fontSize: 14
  TextStyle get sizeSmall => this.copyWith(fontSize: 14);

  ///fontSize: 16
  TextStyle get sizeDefault => this.copyWith(fontSize: 16);

  ///fontSize: 19
  TextStyle get sizeMedium => this.copyWith(fontSize: 19);

  ///fontSize: 24
  TextStyle get sizeLarge => this.copyWith(fontSize: 24);

  ///fontSize: 32
  TextStyle get sizeXLarge => this.copyWith(fontSize: 32);

  ///fontSize: 40
  TextStyle get sizeXXLarge => this.copyWith(fontSize: 40);

  ///fontSize: 48
  TextStyle get sizeXXXLarge => this.copyWith(fontSize: 48);

  ///fontSize: 56
  TextStyle get sizeXXXXLarge => this.copyWith(fontSize: 56);

  TextStyle withColor(Color color) => this.copyWith(color: color);
  TextStyle size(double value) => this.copyWith(fontSize: value);
  TextStyle withHeight(double value) => this.copyWith(height: value);
}

class MfaoTextStyles {
  static const fontFamily = "Montserrat";
  static TextStyle theme({
    Color color = MfaoColors.lightDark,
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.w800,
    FontStyle fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle heading4 = theme().sizeXLarge.weightMedium.heightCompact.spacingRegular;
  static TextStyle heading5 = theme().sizeLarge.weightMedium.heightCompact.spacingRegular;
  static TextStyle title = theme().sizeMedium.weightSemibold.heightCompact.spacingRegular;
  static TextStyle subtitle1 = theme().sizeDefault.weightSemibold.heightCompact.spacingRegular;
  static TextStyle subtitle2 = theme().sizeSmall.weightSemibold.heightCompact.spacingRegular;
  static TextStyle body1 = theme().sizeDefault.weightRegular.heightCompact.spacingRegular;
  static TextStyle body2 = theme().sizeSmall.weightRegular.heightCompact.spacingRegular;
  static TextStyle caption = theme().sizeXSmall.weightMedium.heightCompact.spacingRegular;
  static TextStyle overline = theme().sizeXXSmall.weightSemibold.heightCompact.spacingRegular;
  static TextStyle button1 = theme().sizeSmall.weightSemibold.heightCompact.spacingRegular;
  static TextStyle button2 = theme().sizeXSmall.weightSemibold.heightCompact.spacingRegular;
}
