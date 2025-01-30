import 'package:flutter/material.dart';
import 'package:strating_flutter/flutter%20widgets/provider/bottom_list_page.dart';

class ListPageScreen extends StatelessWidget {
  const ListPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("List Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (BuildContext context){
                return Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                      left: 0
                    ),
                 child: BottomListPage(),
                );
              });
            },
            child: Icon(
                Icons.add
            )),
      ),
    );
  }
}
