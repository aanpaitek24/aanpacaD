import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0kLqPpjEuJT2lZ4ViehcRnVL2XIZakzg",
            authDomain: "dashboard-8uy8j1.firebaseapp.com",
            projectId: "dashboard-8uy8j1",
            storageBucket: "dashboard-8uy8j1.appspot.com",
            messagingSenderId: "737366060428",
            appId: "1:737366060428:web:9ca37c57d58fe0cf997aa9"));
  } else {
    await Firebase.initializeApp();
  }
}
