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
    apiKey: 'AIzaSyBp_klDvONq2CsHctAXmlbouV7PDAT7nqE',
    appId: '1:508866725723:web:67450a74930ac363ca7c7e',
    messagingSenderId: '508866725723',
    projectId: 'moetezjebari-0101',
    authDomain: 'moetezjebari-0101.firebaseapp.com',
    storageBucket: 'moetezjebari-0101.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-G5VffI9azilyph-NmzC0mSHXRcfvzro',
    appId: '1:508866725723:android:af664fb538a20513ca7c7e',
    messagingSenderId: '508866725723',
    projectId: 'moetezjebari-0101',
    storageBucket: 'moetezjebari-0101.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXAd9RhN38X0KmGUBMvYPOKDh69huIGUc',
    appId: '1:508866725723:ios:4114b9206b558782ca7c7e',
    messagingSenderId: '508866725723',
    projectId: 'moetezjebari-0101',
    storageBucket: 'moetezjebari-0101.firebasestorage.app',
    iosBundleId: 'com.moetezjebari.ios',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXAd9RhN38X0KmGUBMvYPOKDh69huIGUc',
    appId: '1:508866725723:ios:88e08886b40aafabca7c7e',
    messagingSenderId: '508866725723',
    projectId: 'moetezjebari-0101',
    storageBucket: 'moetezjebari-0101.firebasestorage.app',
    iosBundleId: 'com.example.ios',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBp_klDvONq2CsHctAXmlbouV7PDAT7nqE',
    appId: '1:508866725723:web:7ddca050ce746b10ca7c7e',
    messagingSenderId: '508866725723',
    projectId: 'moetezjebari-0101',
    authDomain: 'moetezjebari-0101.firebaseapp.com',
    storageBucket: 'moetezjebari-0101.firebasestorage.app',
  );
}
