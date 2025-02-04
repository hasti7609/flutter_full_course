import 'package:flutter/material.dart';

class MainPagesScreen extends StatefulWidget {
  const MainPagesScreen({super.key});

  @override
  State<MainPagesScreen> createState() => _MainPagesScreenState();
}

class _MainPagesScreenState extends State<MainPagesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        title: Text("Main Page"),
      ),
    );
  }
}
