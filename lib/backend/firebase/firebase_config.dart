import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnMVuErobvdgvTjvSAjOR2V_o8fjz0sXY",
            authDomain: "truefunds-na1fl4.firebaseapp.com",
            projectId: "truefunds-na1fl4",
            storageBucket: "truefunds-na1fl4.firebasestorage.app",
            messagingSenderId: "366712364769",
            appId: "1:366712364769:web:f9d320ef715687122ae1a0"));
  } else {
    await Firebase.initializeApp();
  }
}
