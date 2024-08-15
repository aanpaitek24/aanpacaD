import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBFLj93jUFF1Roaub9axhlXL7sslALwI2I",
            authDomain: "aanp-23333.firebaseapp.com",
            projectId: "aanp-23333",
            storageBucket: "aanp-23333.appspot.com",
            messagingSenderId: "792612511620",
            appId: "1:792612511620:web:270bfdbec91ffe0216c7d1",
            measurementId: "G-8HR5QKW13G"));
  } else {
    await Firebase.initializeApp();
  }
}
