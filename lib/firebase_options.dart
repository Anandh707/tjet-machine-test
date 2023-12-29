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
    apiKey: 'AIzaSyDzCJCIZ6MAIEh0vH_G-ZVNN9COZRpFKzk',
    appId: '1:132009819939:web:479ef6fe4146477e691696',
    messagingSenderId: '132009819939',
    projectId: 'tjet-machine-test',
    authDomain: 'tjet-machine-test.firebaseapp.com',
    storageBucket: 'tjet-machine-test.appspot.com',
    measurementId: 'G-4M1XK75886',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9bTmSH4v_IShHtM9fqE3bbSVZOvkXXe4',
    appId: '1:132009819939:android:aee9bdf0cb883af6691696',
    messagingSenderId: '132009819939',
    projectId: 'tjet-machine-test',
    storageBucket: 'tjet-machine-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDy1VrRdCRkLLWX9bLqRBlUOoN5b22eSXw',
    appId: '1:132009819939:ios:cbdf51e17cbf0976691696',
    messagingSenderId: '132009819939',
    projectId: 'tjet-machine-test',
    storageBucket: 'tjet-machine-test.appspot.com',
    iosBundleId: 'com.example.tecJetMachine',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDy1VrRdCRkLLWX9bLqRBlUOoN5b22eSXw',
    appId: '1:132009819939:ios:f2ea4aa1b6baa807691696',
    messagingSenderId: '132009819939',
    projectId: 'tjet-machine-test',
    storageBucket: 'tjet-machine-test.appspot.com',
    iosBundleId: 'com.example.tecJetMachine.RunnerTests',
  );
}
