import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_practice/views/home_screen.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Practice App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const HomeScreen(),
    );
  }
}
