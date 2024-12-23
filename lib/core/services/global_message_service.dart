import 'package:events_test/shared/widgets/one_error_message.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

abstract class GlobalMessageService {
  static void show(BuildContext context, String value) {
    showToastWidget(
      OneErrorMessage(value: value),
      position: ToastPosition.bottom,
      duration: const Duration(seconds: 5),
      animationCurve: Curves.easeOut,
      dismissOtherToast: true,
      handleTouch: true,
    );
  }
}
