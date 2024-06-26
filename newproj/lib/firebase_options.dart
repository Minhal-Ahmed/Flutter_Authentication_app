// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB0-zazc-OQetRcCdCPozwzadhyHi8L7_s',
    appId: '1:391081004746:web:fb264a20bc371564fa2e33',
    messagingSenderId: '391081004746',
    projectId: 'testflutter-8f656',
    authDomain: 'testflutter-8f656.firebaseapp.com',
    storageBucket: 'testflutter-8f656.appspot.com',
    measurementId: 'G-2B61G3SXFG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1J464O2Lr88NvGlGRsmS8PIWHnBhG6DY',
    appId: '1:391081004746:android:11ef7cf2d9c7c8b9fa2e33',
    messagingSenderId: '391081004746',
    projectId: 'testflutter-8f656',
    storageBucket: 'testflutter-8f656.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjSYZE9VcbpZ7A6jxVg9cUKSymfWaToNY',
    appId: '1:391081004746:ios:390176cadfa0a88ffa2e33',
    messagingSenderId: '391081004746',
    projectId: 'testflutter-8f656',
    storageBucket: 'testflutter-8f656.appspot.com',
    iosBundleId: 'com.example.newproj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjSYZE9VcbpZ7A6jxVg9cUKSymfWaToNY',
    appId: '1:391081004746:ios:db2bd0f3d057167dfa2e33',
    messagingSenderId: '391081004746',
    projectId: 'testflutter-8f656',
    storageBucket: 'testflutter-8f656.appspot.com',
    iosBundleId: 'com.example.newproj.RunnerTests',
  );
}
