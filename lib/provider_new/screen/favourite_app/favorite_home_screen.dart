import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/favourite_provider.dart';
import 'package:starting_flutter/provider_new/screen/favourite_app/favourite_items_added_screen.dart';

class FavoriteHomeScreen extends StatefulWidget {
   const FavoriteHomeScreen({super.key});

  @override
  State<FavoriteHomeScreen> createState() => _FavoriteHomeScreenState();
}

class _FavoriteHomeScreenState extends State<FavoriteHomeScreen> {


  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.deepOrange.shade300,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=>
                        FavouriteItemsAddedScreen()
                ));
              },
              icon: Icon(Icons.favorite)
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(child:
          ListView.builder(
            itemCount: 100,
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
                          value.addItems(index);
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
