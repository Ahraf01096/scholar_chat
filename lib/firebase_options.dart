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
    apiKey: 'AIzaSyCO0u1bLkQvG-RnWp4qEl8ORbMZm6VqYwo',
    appId: '1:455891894818:web:4d235009b5708a9968807b',
    messagingSenderId: '455891894818',
    projectId: 'chat-app-1f30f',
    authDomain: 'chat-app-1f30f.firebaseapp.com',
    storageBucket: 'chat-app-1f30f.appspot.com',
    measurementId: 'G-PZ25NTGH13',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLOcWet-prRreNW-l_5EoY86bqXLDgbdc',
    appId: '1:455891894818:android:742e56a91b631d5068807b',
    messagingSenderId: '455891894818',
    projectId: 'chat-app-1f30f',
    storageBucket: 'chat-app-1f30f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZvn5vLwTYXFzNXjYFWPNLUA849lU8QSw',
    appId: '1:455891894818:ios:8fd53008350f4b8468807b',
    messagingSenderId: '455891894818',
    projectId: 'chat-app-1f30f',
    storageBucket: 'chat-app-1f30f.appspot.com',
    iosBundleId: 'com.example.scholarChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZvn5vLwTYXFzNXjYFWPNLUA849lU8QSw',
    appId: '1:455891894818:ios:8fd53008350f4b8468807b',
    messagingSenderId: '455891894818',
    projectId: 'chat-app-1f30f',
    storageBucket: 'chat-app-1f30f.appspot.com',
    iosBundleId: 'com.example.scholarChat',
  );
}
