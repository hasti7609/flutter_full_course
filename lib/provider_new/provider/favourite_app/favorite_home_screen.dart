import 'package:flutter/material.dart';

class FavoriteHomeScreen extends StatelessWidget {
  const FavoriteHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favourite App"),
        backgroundColor: Colors.deepOrange.shade300,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite)
          )
        ],
      ),
    );
  }
}
