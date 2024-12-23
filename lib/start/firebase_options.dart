// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBnwKMt74px5oQ5QStkvpiufmToXjQChiA',
    appId: '1:147551882969:web:f22cb6f0220fc27ccd78c8',
    messagingSenderId: '147551882969',
    projectId: 'events-task-00000',
    authDomain: 'events-task-00000.firebaseapp.com',
    storageBucket: 'events-task-00000.firebasestorage.app',
    measurementId: 'G-XDP194DRG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrz-Vgq4_gBLD06adNNPvYlCkB2YiDI68',
    appId: '1:147551882969:android:ef6df3c0cb21b021cd78c8',
    messagingSenderId: '147551882969',
    projectId: 'events-task-00000',
    storageBucket: 'events-task-00000.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBz9JlmbuROmpH1PVjE_nyYj5W8XFlWJUU',
    appId: '1:147551882969:ios:731a6e3def3eb460cd78c8',
    messagingSenderId: '147551882969',
    projectId: 'events-task-00000',
    storageBucket: 'events-task-00000.firebasestorage.app',
    iosBundleId: 'com.example.websparkTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBnwKMt74px5oQ5QStkvpiufmToXjQChiA',
    appId: '1:147551882969:web:705b240e9007976acd78c8',
    messagingSenderId: '147551882969',
    projectId: 'events-task-00000',
    authDomain: 'events-task-00000.firebaseapp.com',
    storageBucket: 'events-task-00000.firebasestorage.app',
    measurementId: 'G-ZXTXHLRRQQ',
  );
}
