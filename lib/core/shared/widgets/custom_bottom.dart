import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';

class CustomButton extends StatelessWidget {
  /// [title] argument is required
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = const Color(0xff152A61),
    this.shape,
    this.width = 200,
    this.height = 48,
    this.isDisabled = false,
    this.icon,
    this.elevation = 0,
    this.gap = 17,
    this.splashColor,
    this.disabledColor,
  });

  final String? title;
  final Widget? icon;

  final double gap;

  final double elevation;

  final VoidCallback? onPressed;

  /// [titleStyle] is used to style the button text
  final TextStyle? titleStyle;

  /// [backgroundColor] for enabled state of button
  final Color backgroundColor;

  /// [shape] is used to apply border radius on button,
  final ShapeBorder? shape;

  /// [width] button width, defaults is 140
  final double width;

  /// [height] button height, defaults is 44
  final double height;

  /// [isDisabled] is used to disable to button, default is true
  final bool isDisabled;

  final Color? splashColor;
  final Color? disabledColor;

  ShapeBorder get _shape =>
      shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  Color get _splashColor => splashColor != null
      ? splashColor!
      : backgroundColor.withValues(alpha: 0.5);

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Material(
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      color: isDisabled ? disabledColor ?? theme.grey : backgroundColor,
      shape: _shape,
      elevation: elevation,
      child: InkWell(
        splashColor: _splashColor,
        onTap: isDisabled ? null : onPressed,
        child: ConstrainedBox(
          constraints: _constraints,
          child: Ink(
            decoration: ShapeDecoration(
              shape: _shape,
              color: isDisabled ? disabledColor ?? theme.grey : backgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  icon!,
                  if (title != null) SizedBox(width: gap),
                ],
                if (title != null) Text(title!, style: titleStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
