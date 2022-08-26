import 'package:flutter/material.dart';
import 'package:final_submission_flutter_pemula/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kebumen Explore',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
