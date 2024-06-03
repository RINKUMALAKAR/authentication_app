import 'package:authentication/GetStartedScreen.dart';
import 'package:authentication/LoginScreen.dart';
import 'package:authentication/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const GetStartedScreen(),
        "/registerscreen": (context) => const RegisterScreen(),
        "/loginscreen": (context) => const LoginScreen()
      },
    );
  }
}
