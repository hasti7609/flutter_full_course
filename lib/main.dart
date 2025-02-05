import 'package:flutter/material.dart';
import 'package:starting_flutter/navigations/pages/route_generator.dart';
import 'package:starting_flutter/provider_new/screen/home_screen_provider.dart';



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
     home: HomeScreenProvider(),
    );
  }
}

