import 'package:flutter/material.dart';
import 'package:strating_flutter/flutter%20widgets/form.dart';
import 'package:strating_flutter/flutter%20widgets/provider/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListPageScreen(),
    );
  }
}

