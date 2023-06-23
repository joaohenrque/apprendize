import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdkNVkgxogOF9CtVVnirFZ7hOKqP48vpQ",
            authDomain: "dados-apprendiz.firebaseapp.com",
            projectId: "dados-apprendiz",
            storageBucket: "dados-apprendiz.appspot.com",
            messagingSenderId: "362666975012",
            appId: "1:362666975012:web:6874ff0d1b693636d15db1"));
  } else {
    await Firebase.initializeApp();
  }
}
