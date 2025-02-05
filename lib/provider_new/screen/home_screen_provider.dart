import 'package:flutter/material.dart';

class HomeScreenProvider extends StatefulWidget {
  const HomeScreenProvider({super.key});

  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(count.toString(),
            style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      child: Icon(Icons.add),),
    );
  }
}
