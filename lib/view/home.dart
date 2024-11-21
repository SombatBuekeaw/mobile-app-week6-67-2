import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // แทนที่ MaterialApp กับ Scaffold
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("My App"),
      ),
    );
  }
}
