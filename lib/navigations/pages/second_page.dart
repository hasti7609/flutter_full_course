import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String items;
  const SecondPage({super.key,required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Center(
        child: Card(
          color: Colors.orange.shade200,
          elevation: 3,
          child: Text(items,
          style: Theme.of(context).textTheme.headlineMedium,),
        ),
      ),
    );
  }
}
