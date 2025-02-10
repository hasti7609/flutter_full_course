import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/count_provider.dart';

class HomeScreenProvider extends StatefulWidget {
  const HomeScreenProvider({super.key});

  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 2), (timer){
      print(provider.count.toString());
      provider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProvider>(context,listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      body: Consumer<CountProvider>(
        builder: (context,child,value) {
          print('Only this build');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(provider.count.toString(),
                style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          provider.setCount();
        },
      child: Icon(Icons.add),),
    );
  }
}
