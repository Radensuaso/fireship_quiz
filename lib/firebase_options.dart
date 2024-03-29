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
    apiKey: 'AIzaSyAY-n4vTeJHbvTCnWEqldZq0zf1XgC1NuA',
    appId: '1:174982843643:web:b576c85d825e39b8e5345e',
    messagingSenderId: '174982843643',
    projectId: 'fireship-quiz-6c0a9',
    authDomain: 'fireship-quiz-6c0a9.firebaseapp.com',
    storageBucket: 'fireship-quiz-6c0a9.appspot.com',
    measurementId: 'G-N2CZCF6JLF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjsS3vcIhv0W2vAuXrHm2Kf-4rMdi5ybM',
    appId: '1:174982843643:android:3a686a044f877baee5345e',
    messagingSenderId: '174982843643',
    projectId: 'fireship-quiz-6c0a9',
    storageBucket: 'fireship-quiz-6c0a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlsBicEhkVW3KAEKlLM6NlMoKl6VGsYA4',
    appId: '1:174982843643:ios:48841c94630c7a44e5345e',
    messagingSenderId: '174982843643',
    projectId: 'fireship-quiz-6c0a9',
    storageBucket: 'fireship-quiz-6c0a9.appspot.com',
    androidClientId: '174982843643-4debi9ogu789mliiqniumk7ocpvhbid1.apps.googleusercontent.com',
    iosClientId: '174982843643-1a6kvgo701f5kqi3tu8sb8vch4kvkqpj.apps.googleusercontent.com',
    iosBundleId: 'io.fireship.fireshipQuiz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlsBicEhkVW3KAEKlLM6NlMoKl6VGsYA4',
    appId: '1:174982843643:ios:48841c94630c7a44e5345e',
    messagingSenderId: '174982843643',
    projectId: 'fireship-quiz-6c0a9',
    storageBucket: 'fireship-quiz-6c0a9.appspot.com',
    androidClientId: '174982843643-4debi9ogu789mliiqniumk7ocpvhbid1.apps.googleusercontent.com',
    iosClientId: '174982843643-1a6kvgo701f5kqi3tu8sb8vch4kvkqpj.apps.googleusercontent.com',
    iosBundleId: 'io.fireship.fireshipQuiz',
  );
}
