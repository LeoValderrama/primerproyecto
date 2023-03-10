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
    apiKey: 'AIzaSyDleGchINCIQFknhK8YkekUoYf_wkplWUk',
    appId: '1:480937139446:web:e566d9f2b74cd4a10ba0d7',
    messagingSenderId: '480937139446',
    projectId: 'prueba2-cf249',
    authDomain: 'prueba2-cf249.firebaseapp.com',
    databaseURL: 'https://prueba2-cf249-default-rtdb.firebaseio.com',
    storageBucket: 'prueba2-cf249.appspot.com',
    measurementId: 'G-Q3XXR1XLNH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9OERZN5TXSAjsnR-uepf9pEtv4fzrmYY',
    appId: '1:480937139446:android:18948a63f60cbe760ba0d7',
    messagingSenderId: '480937139446',
    projectId: 'prueba2-cf249',
    databaseURL: 'https://prueba2-cf249-default-rtdb.firebaseio.com',
    storageBucket: 'prueba2-cf249.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr35t7yYRccdRZ6YG94qxtRrkC1vpYtgM',
    appId: '1:480937139446:ios:b15cb7be131dc1590ba0d7',
    messagingSenderId: '480937139446',
    projectId: 'prueba2-cf249',
    databaseURL: 'https://prueba2-cf249-default-rtdb.firebaseio.com',
    storageBucket: 'prueba2-cf249.appspot.com',
    iosClientId: '480937139446-0vjb1jbp6k5qths2qhf382h3in721an9.apps.googleusercontent.com',
    iosBundleId: 'co.edu.ucundinamarca.primerproyecto',
  );
}
