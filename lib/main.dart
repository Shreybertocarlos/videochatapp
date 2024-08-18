import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:videochatapp/colors.dart';
import 'package:videochatapp/features/landing/landing_screen.dart';
import 'package:videochatapp/firebase_options.dart';


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
        title: 'Messaging App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const LandingScreen(),
        );
  }
}