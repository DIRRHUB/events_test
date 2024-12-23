import 'package:events_test/core/context_extension.dart';
import 'package:events_test/core/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneButton extends StatelessWidget {
  const OneButton({
    super.key,
    required this.text,
    this.onTap,
    this.isEnabled = true,
    this.backgroundColor,
    this.textStyle,
    this.border = BorderSide.none,
    this.height,
    this.borderRadius,
    this.width,
    this.padding,
    this.iconSize,
    this.disabledColor,
  });
  final Function()? onTap;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool isEnabled;
  final Color? backgroundColor;
  final BorderSide border;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final double? iconSize;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 52,
      child: ElevatedButton(
        onPressed: isEnabled ? onTap : null,
        style: ButtonStyle(
          mouseCursor: WidgetStateProperty.all(isEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic),
          padding: WidgetStateProperty.all(
            padding ?? const EdgeInsets.symmetric(horizontal: PaddingConstants.large, vertical: 0),
          ),
          backgroundColor: WidgetStateProperty.all(_getColor(context)),
          overlayColor: WidgetStateProperty.all(backgroundColor ?? context.colorScheme.primary),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
              side: border,
            ),
          ),
        ),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: textStyle ??
          theme.textTheme.bodySmall?.copyWith(
            color: isEnabled ? theme.colorScheme.onPrimary : theme.colorScheme.onPrimary.withOpacity(0.75),
          ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Color? _getColor(BuildContext context) {
    final theme = Theme.of(context);
    if (isEnabled) {
      return backgroundColor ?? theme.colorScheme.primary.withOpacity(.9);
    } else {
      return disabledColor ?? (backgroundColor?.withOpacity(0.7) ?? theme.colorScheme.primary.withOpacity(0.7));
    }
  }
}
