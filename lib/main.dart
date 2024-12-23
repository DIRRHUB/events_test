import 'package:events_test/start/di.dart' as di;
import 'package:events_test/start/one_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///Setup DI to initialize all dependencies
  await di.reinit();

  runApp(const OneApp());
}
