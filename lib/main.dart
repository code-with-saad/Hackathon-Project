import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/views/home_view.dart';
import 'package:hackathon_project/views/login_view.dart';
import 'package:hackathon_project/views/orderdone_view.dart';
import 'package:hackathon_project/views/splashscreen_view.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hackathon Project Plantify',
      home: SplashScreen(),
    );
  }
}
