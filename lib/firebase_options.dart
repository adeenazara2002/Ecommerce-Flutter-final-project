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
    apiKey: 'AIzaSyBpALuyWDIWtWborCBKnCBapFpLXppOgNc',
    appId: '1:552314635282:web:cd3fa09976df2bf1bd04cb',
    messagingSenderId: '552314635282',
    projectId: 'ecommerce-application-90586',
    authDomain: 'ecommerce-application-90586.firebaseapp.com',
    storageBucket: 'ecommerce-application-90586.appspot.com',
    measurementId: 'G-EREC0MSLTD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDS-DQfsVh1pvf5KAv_JAJxmGsD7CVSGk',
    appId: '1:552314635282:android:83605cd9e9bba02ebd04cb',
    messagingSenderId: '552314635282',
    projectId: 'ecommerce-application-90586',
    storageBucket: 'ecommerce-application-90586.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCooY8dR4bOeeRA6W59vsuWxWZXXjl1Si0',
    appId: '1:552314635282:ios:1d6dcc0cae1409d8bd04cb',
    messagingSenderId: '552314635282',
    projectId: 'ecommerce-application-90586',
    storageBucket: 'ecommerce-application-90586.appspot.com',
    iosBundleId: 'com.example.ecommerceFlutterProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCooY8dR4bOeeRA6W59vsuWxWZXXjl1Si0',
    appId: '1:552314635282:ios:1d6dcc0cae1409d8bd04cb',
    messagingSenderId: '552314635282',
    projectId: 'ecommerce-application-90586',
    storageBucket: 'ecommerce-application-90586.appspot.com',
    iosBundleId: 'com.example.ecommerceFlutterProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpALuyWDIWtWborCBKnCBapFpLXppOgNc',
    appId: '1:552314635282:web:fc952a4724eb37f2bd04cb',
    messagingSenderId: '552314635282',
    projectId: 'ecommerce-application-90586',
    authDomain: 'ecommerce-application-90586.firebaseapp.com',
    storageBucket: 'ecommerce-application-90586.appspot.com',
    measurementId: 'G-2L1S2B7686',
  );
}
