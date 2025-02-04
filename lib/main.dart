import 'package:flutter/material.dart';
import 'package:starting_flutter/navigations/pages/route_generator.dart';



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
     initialRoute: '/',
     onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

