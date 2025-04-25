import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOnS3dUuS4FVCJwBdn91Tn1zfHMb9tYNQ",
            authDomain: "payspin-app.firebaseapp.com",
            projectId: "payspin-app",
            storageBucket: "payspin-app.appspot.com",
            messagingSenderId: "662471905267",
            appId: "1:662471905267:web:3f43adc7fb9793063d8c86",
            measurementId: "G-5NJFBJCE5F"));
  } else {
    await Firebase.initializeApp();
  }
}
