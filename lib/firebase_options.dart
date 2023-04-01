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
    apiKey: 'AIzaSyDCFg6B464gdEuZKeaT3gl2uEAKaEu7jPg',
    appId: '1:748172896008:web:9f496f14db9321a4e06ebd',
    messagingSenderId: '748172896008',
    projectId: 'kisileruygulamasifirebase',
    authDomain: 'kisileruygulamasifirebase.firebaseapp.com',
    storageBucket: 'kisileruygulamasifirebase.appspot.com',
    measurementId: 'G-MF6WGPSNLB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvu62kFAre5Na-Pm41IaUK5gIkmH_04mc',
    appId: '1:748172896008:android:84b40640ce423dd2e06ebd',
    messagingSenderId: '748172896008',
    projectId: 'kisileruygulamasifirebase',
    storageBucket: 'kisileruygulamasifirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxkAFy0X6n-U5BxjaxRu-s2NLb51kXXjQ',
    appId: '1:748172896008:ios:b8b114ac6aa8b515e06ebd',
    messagingSenderId: '748172896008',
    projectId: 'kisileruygulamasifirebase',
    storageBucket: 'kisileruygulamasifirebase.appspot.com',
    iosClientId: '748172896008-pnsunt5pd1tjj3o9i1eh3q9k6ovqker2.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisilerUygulamasiFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxkAFy0X6n-U5BxjaxRu-s2NLb51kXXjQ',
    appId: '1:748172896008:ios:b8b114ac6aa8b515e06ebd',
    messagingSenderId: '748172896008',
    projectId: 'kisileruygulamasifirebase',
    storageBucket: 'kisileruygulamasifirebase.appspot.com',
    iosClientId: '748172896008-pnsunt5pd1tjj3o9i1eh3q9k6ovqker2.apps.googleusercontent.com',
    iosBundleId: 'com.example.kisilerUygulamasiFirebase',
  );
}
