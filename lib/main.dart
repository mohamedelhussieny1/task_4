import 'package:flutter/material.dart';
import 'package:task_4/home_screa.dart';
import 'package:task_4/login_screan.dart';
import 'package:task_4/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScrean(),
    );
  }
}
