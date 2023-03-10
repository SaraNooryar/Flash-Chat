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
    apiKey: 'AIzaSyBu-XB4Bgi0WrD6b_cmQF-MfobnunzRZc0',
    appId: '1:544061221462:web:aae342dcface971ff5a9f7',
    messagingSenderId: '544061221462',
    projectId: 'flash-chat-ac6e6',
    authDomain: 'flash-chat-ac6e6.firebaseapp.com',
    storageBucket: 'flash-chat-ac6e6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcVmDMJddUahRG-UAG_TuJii9VgukFSLc',
    appId: '1:544061221462:android:4d0e0cdeb86ed68ef5a9f7',
    messagingSenderId: '544061221462',
    projectId: 'flash-chat-ac6e6',
    storageBucket: 'flash-chat-ac6e6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuH7PsEZGipaAoXpb-BdocZLMO3jb-ZV4',
    appId: '1:544061221462:ios:da3a2dca1a003d01f5a9f7',
    messagingSenderId: '544061221462',
    projectId: 'flash-chat-ac6e6',
    storageBucket: 'flash-chat-ac6e6.appspot.com',
    iosClientId: '544061221462-i4898d4luig511g74gupi2vc3rteijbv.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChatStartingProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuH7PsEZGipaAoXpb-BdocZLMO3jb-ZV4',
    appId: '1:544061221462:ios:da3a2dca1a003d01f5a9f7',
    messagingSenderId: '544061221462',
    projectId: 'flash-chat-ac6e6',
    storageBucket: 'flash-chat-ac6e6.appspot.com',
    iosClientId: '544061221462-i4898d4luig511g74gupi2vc3rteijbv.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChatStartingProject',
  );
}
