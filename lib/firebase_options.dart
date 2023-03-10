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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAUk39rRl2-ZvUcjXncuckTSEaBzhnTv2c',
    appId: '1:117769440838:web:4e30e426436a72ecf58447',
    messagingSenderId: '117769440838',
    projectId: 'hackathon-project-43c7a',
    authDomain: 'hackathon-project-43c7a.firebaseapp.com',
    storageBucket: 'hackathon-project-43c7a.appspot.com',
    measurementId: 'G-QY3TLFWM1Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrGj862TtDTVHfZxhXI1xcSty_QT-87Zs',
    appId: '1:117769440838:android:cb5b757a7cdf85a3f58447',
    messagingSenderId: '117769440838',
    projectId: 'hackathon-project-43c7a',
    storageBucket: 'hackathon-project-43c7a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUOHvSGWmaO76AtgBsYlimCocPnCYKXQE',
    appId: '1:117769440838:ios:c2ff630cc79043c3f58447',
    messagingSenderId: '117769440838',
    projectId: 'hackathon-project-43c7a',
    storageBucket: 'hackathon-project-43c7a.appspot.com',
    iosClientId: '117769440838-q3ci71rssl1gu990cqi64t1u174r0fse.apps.googleusercontent.com',
    iosBundleId: 'com.example.hackathonProject',
  );
}
