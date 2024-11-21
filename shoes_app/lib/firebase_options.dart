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
        return macos;
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
    apiKey: 'AIzaSyDtllSQq9HyeuzRbHpiMcFsWFilM0tLpFQ',
    appId: '1:80412936788:web:640b6f40be2903a7a53bc1',
    messagingSenderId: '80412936788',
    projectId: 'shoes-app-1bcec',
    authDomain: 'shoes-app-1bcec.firebaseapp.com',
    storageBucket: 'shoes-app-1bcec.firebasestorage.app',
    measurementId: 'G-E5Y4K13C4L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqBXxs-SBlY0IUOr1iMsQJ0ffaBQoPAAM',
    appId: '1:80412936788:android:7d3d882dfcc46a5aa53bc1',
    messagingSenderId: '80412936788',
    projectId: 'shoes-app-1bcec',
    storageBucket: 'shoes-app-1bcec.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaNRBu__z7OB04ACD10hpNXowLwqaypq8',
    appId: '1:80412936788:ios:8c3a235ec21e7e8ea53bc1',
    messagingSenderId: '80412936788',
    projectId: 'shoes-app-1bcec',
    storageBucket: 'shoes-app-1bcec.firebasestorage.app',
    iosBundleId: 'com.shoesstore.shoesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDaNRBu__z7OB04ACD10hpNXowLwqaypq8',
    appId: '1:80412936788:ios:8c3a235ec21e7e8ea53bc1',
    messagingSenderId: '80412936788',
    projectId: 'shoes-app-1bcec',
    storageBucket: 'shoes-app-1bcec.firebasestorage.app',
    iosBundleId: 'com.shoesstore.shoesApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDtllSQq9HyeuzRbHpiMcFsWFilM0tLpFQ',
    appId: '1:80412936788:web:30d6ac3b53471a30a53bc1',
    messagingSenderId: '80412936788',
    projectId: 'shoes-app-1bcec',
    authDomain: 'shoes-app-1bcec.firebaseapp.com',
    storageBucket: 'shoes-app-1bcec.firebasestorage.app',
    measurementId: 'G-RCP60CY654',
  );
}
