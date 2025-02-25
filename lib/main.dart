import 'package:flutter/material.dart';
import 'package:kouri/HomePage.dart';
import 'package:kouri/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP 1',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
