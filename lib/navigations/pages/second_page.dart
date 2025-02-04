import 'package:flutter/material.dart';

class SecondPageScreen extends StatefulWidget {
  const SecondPageScreen({super.key});

  @override
  State<SecondPageScreen> createState() => _SecondPageScreenState();
}

class _SecondPageScreenState extends State<SecondPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        title: Text("Second Page"),
      ),
    );

  }
}
