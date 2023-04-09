import 'package:flutter/material.dart';
import 'package:flutter_application_api/pages/home_page.dart';

void main() {
  runApp(const MyApp());
  // ini page main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
