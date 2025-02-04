import 'package:flutter/material.dart';

class HomePageRiverpodScreen extends StatelessWidget {
  const HomePageRiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("River Pod Home Page"),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Taps This times!!",
            style: Theme.of(context).textTheme.headlineMedium,),
            Text("0",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),),
    );
  }
}
