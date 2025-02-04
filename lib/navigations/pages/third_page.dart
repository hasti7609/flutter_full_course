import 'package:flutter/material.dart';

class ThirdPageScreen extends StatefulWidget {
  const ThirdPageScreen({super.key});

  @override
  State<ThirdPageScreen> createState() => _ThirdPageScreenState();
}

class _ThirdPageScreenState extends State<ThirdPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        title: Text("Third Page"),
      ),
    );
  }
}
