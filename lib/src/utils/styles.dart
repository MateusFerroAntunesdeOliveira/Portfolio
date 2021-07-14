part of '../utils.dart';

class BasicButtonStyle extends ButtonStyle {
  BasicButtonStyle({
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? disabledColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? shadowColor,
    double? elevation,
    EdgeInsets? padding,
    Size? minimumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? mouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    Duration? animationDuration,
    bool? enableFeedback,
    Alignment? alignment,
  }) : super(
          textStyle: MaterialStateProperty.all(textStyle),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (disabledColor != null && states.contains(MaterialState.disabled))
              return disabledColor;
            return backgroundColor;
          }),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          overlayColor: MaterialStateProperty.all(overlayColor),
          shadowColor: MaterialStateProperty.all(shadowColor),
          elevation: MaterialStateProperty.all(elevation),
          padding: MaterialStateProperty.all(padding),
          minimumSize: MaterialStateProperty.all(minimumSize),
          side: MaterialStateProperty.all(side),
          shape: MaterialStateProperty.all(shape),
          mouseCursor: MaterialStateProperty.all(mouseCursor),
          visualDensity: visualDensity,
          tapTargetSize: tapTargetSize,
          animationDuration: animationDuration,
          enableFeedback: enableFeedback,
          alignment: alignment,
        );
}
