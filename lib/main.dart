import 'package:flutter/material.dart';
import 'login.dart';
import 'login_screen.dart';  // นำเข้า LoginScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),  // เริ่มต้นที่หน้าจอ LoginScreen
    );
  }
}
