import 'package:events_test/core/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneLoading extends StatelessWidget {
  const OneLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: PaddingConstants.extraImmense,
        width: PaddingConstants.extraImmense,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
