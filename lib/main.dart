import 'package:flutter/material.dart';
import 'package:mypcot_app/constants/colors.dart';
import 'package:mypcot_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mypcot App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: fontColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
