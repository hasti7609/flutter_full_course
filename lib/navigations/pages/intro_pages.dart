import 'package:flutter/material.dart';


class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Page"),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome",
            style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
             Navigator.of(context).pushNamed('/second');
              }, child: Text("Next!!"))
          ],
        ),
      ),
    );
  }
}
