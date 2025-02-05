import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/count_provider.dart';
import 'package:starting_flutter/provider_new/screen/example_one_screen.dart';
import 'package:starting_flutter/provider_new/screen/home_screen_provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>CountProvider(),
      child: MaterialApp(
        title: 'Flutter Practice',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
         home: ExampleOneScreen(),
      ),
    );
  }
}

