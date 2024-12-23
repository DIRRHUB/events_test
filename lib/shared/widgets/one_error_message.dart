import 'package:events_test/core/context_extension.dart';
import 'package:events_test/core/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneErrorMessage extends StatelessWidget {
  const OneErrorMessage({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(PaddingConstants.large),
      child: Theme(
        data: theme,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(BorderRadiusConstants.medium),
            border: Border.all(color: context.colorScheme.surfaceContainerHighest),
          ),
          padding: const EdgeInsets.all(PaddingConstants.large),
          child: Text(
            value,
            style: theme.primaryTextTheme.bodyMedium?.copyWith(color: context.colorScheme.onPrimary),
            maxLines: 5,
          ),
        ),
      ),
    );
  }
}
