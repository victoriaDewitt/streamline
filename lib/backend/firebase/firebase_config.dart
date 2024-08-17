import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCL15Zxcg7X9At9KmEW5tYkY0Vu8tOv1NE",
            authDomain: "streamline-f0ce9.firebaseapp.com",
            projectId: "streamline-f0ce9",
            storageBucket: "streamline-f0ce9.appspot.com",
            messagingSenderId: "852073803334",
            appId: "1:852073803334:web:7dc6c68ba0298f2340a447"));
  } else {
    await Firebase.initializeApp();
  }
}
