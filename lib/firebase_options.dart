// firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    // Параметры для Android, iOS и веб
    // Замените их своими значениями, которые можно найти в Firebase Console
    if (defaultTargetPlatform == TargetPlatform.android) {
      return const FirebaseOptions(
        apiKey: 'YOUR_ANDROID_API_KEY',
        appId: 'YOUR_ANDROID_APP_ID',
        messagingSenderId: 'YOUR_ANDROID_MESSAGING_SENDER_ID',
        projectId: 'YOUR_PROJECT_ID',
        storageBucket: 'YOUR_ANDROID_STORAGE_BUCKET',
        authDomain: 'YOUR_ANDROID_AUTH_DOMAIN',
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return const FirebaseOptions(
        apiKey: 'YOUR_IOS_API_KEY',
        appId: 'YOUR_IOS_APP_ID',
        messagingSenderId: 'YOUR_IOS_MESSAGING_SENDER_ID',
        projectId: 'YOUR_PROJECT_ID',
        storageBucket: 'YOUR_IOS_STORAGE_BUCKET',
        authDomain: 'YOUR_IOS_AUTH_DOMAIN',
        iosClientId: 'YOUR_IOS_CLIENT_ID',
        iosBundleId: 'YOUR_IOS_BUNDLE_ID',
      );
    } else {
      // Параметры для веб-версии
      return const FirebaseOptions(
        apiKey: 'YOUR_WEB_API_KEY',
        appId: 'YOUR_WEB_APP_ID',
        messagingSenderId: 'YOUR_WEB_MESSAGING_SENDER_ID',
        projectId: 'YOUR_PROJECT_ID',
        storageBucket: 'YOUR_WEB_STORAGE_BUCKET',
        authDomain: 'YOUR_WEB_AUTH_DOMAIN',
        measurementId: 'YOUR_WEB_MEASUREMENT_ID',
      );
    }
  }
}
