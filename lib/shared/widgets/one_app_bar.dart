import 'package:events_test/core/context_extension.dart';
import 'package:events_test/core/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OneAppBar({
    super.key,
    required this.title,
    this.onClose,
    this.appBarHeight = 52,
    this.actions,
    this.iconColor,
  });
  final String title;
  final double appBarHeight;
  final Function()? onClose;
  final List<Widget>? actions;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: context.textTheme.titleLarge?.copyWith(color: context.colorScheme.primary)),
      toolbarHeight: appBarHeight,
      leading: onClose != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: PaddingConstants.normal),
                if (onClose != null) _buildLeadingIcon(context, onTap: onClose),
              ],
            )
          : null,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: context.colorScheme.surface),
      shadowColor: Colors.black,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: [
        ...actions ?? [],
      ],
    );
  }

  Widget _buildLeadingIcon(
    BuildContext context, {
    required Function()? onTap,
  }) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.arrow_back_ios,
        color: iconColor ?? context.colorScheme.secondary,
        size: IconConstants.iconNormal,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  double get baseWidth => 24;

  double get leadingWidth {
    double width = PaddingConstants.medium;
    if (onClose != null) {
      width += baseWidth;
    }
    return width;
  }
}
