import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';


class FavouriteItemsAddedScreen extends StatefulWidget {
  const FavouriteItemsAddedScreen({super.key});

  @override
  State<FavouriteItemsAddedScreen> createState() => _FavouriteItemsAddedScreenState();
}

class _FavouriteItemsAddedScreenState extends State<FavouriteItemsAddedScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteItemProvider>(context);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Added Item"),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.deepOrange.shade300,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite)
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(child:
          ListView.builder(
              itemCount: provider.mySelectedItems.length,
              itemBuilder: (context,index){
                return Consumer<FavouriteItemProvider>(
                    builder: (context,value,child) {
                      return ListTile(
                        title: Text("Item $index"),
                        trailing: IconButton(
                            onPressed: (){
                              if(value.mySelectedItems.contains(index)){
                                value.removeItem(index);
                              }
                              else{
                                 value.mySelectedItems.add(index);
                              }
                            },
                            icon: Icon(value.mySelectedItems.contains(index)?Icons.favorite:Icons.favorite_border_outlined)
                        ),
                      );
                    }
                );
              }))
        ],
      ),
    );
  }
}
