import 'package:flutter/material.dart';

class BottomListPage extends StatelessWidget {
  const BottomListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Add Data")
        ],
      ),
    );
  }
}
