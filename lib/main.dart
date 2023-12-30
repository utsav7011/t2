import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:t2/screens/landing_screen1.dart';
import 'package:t2/screens/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDgUi6eSf4L_YWwzCZqWEkHsGncpacSvAA",
          authDomain: "otptask-ac2f2.firebaseapp.com",
          projectId: "otptask-ac2f2",
          storageBucket: "otptask-ac2f2.appspot.com",
          messagingSenderId: "963895808098",
          appId: "1:963895808098:web:75d18752bb23f2e54f413b",
          measurementId: "G-Y56933TFW3"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 't2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPageOne(),
    );
  }
}
