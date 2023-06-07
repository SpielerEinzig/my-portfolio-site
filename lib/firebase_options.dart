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
    apiKey: 'AIzaSyAvN_7YIrSnkyLRbTnE64gRC94P1HTDDWw',
    appId: '1:473396229846:web:9d7efd8c8a225b2065bb77',
    messagingSenderId: '473396229846',
    projectId: 'spieler-einzig',
    authDomain: 'spieler-einzig.firebaseapp.com',
    storageBucket: 'spieler-einzig.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1egcEG3fYxaVuAi1x45pop1BbypG1Ins',
    appId: '1:473396229846:android:3a3a329e930e9e9265bb77',
    messagingSenderId: '473396229846',
    projectId: 'spieler-einzig',
    storageBucket: 'spieler-einzig.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_aWvszcLwEzZCUG4dD2-zFPxr559vcpA',
    appId: '1:473396229846:ios:3e2f3266d3d6eb0c65bb77',
    messagingSenderId: '473396229846',
    projectId: 'spieler-einzig',
    storageBucket: 'spieler-einzig.appspot.com',
    iosClientId: '473396229846-g0l14tbiq2a4qnujks93mou5baq5b7a5.apps.googleusercontent.com',
    iosBundleId: 'com.example.ryansPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_aWvszcLwEzZCUG4dD2-zFPxr559vcpA',
    appId: '1:473396229846:ios:2977ff842b99497065bb77',
    messagingSenderId: '473396229846',
    projectId: 'spieler-einzig',
    storageBucket: 'spieler-einzig.appspot.com',
    iosClientId: '473396229846-chpcivvf2j43dgop54llr1hhrbs6pttg.apps.googleusercontent.com',
    iosBundleId: 'com.example.ryansPortfolio.RunnerTests',
  );
}