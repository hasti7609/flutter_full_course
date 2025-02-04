import 'package:flutter/material.dart';


class IntroPages extends StatelessWidget {
  IntroPages({super.key});

  final List<String> users = ["Apple","Banana","Rose","Lotus",
    "Pine Apple","Chikoo",
  "Rose Merry","Champa","Rosy"];

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
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
                  child: ListView.builder(
                      itemCount: users.length,
                  itemBuilder: (context,index){
                  final _users = users[index];
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed('/second',arguments: _users);
                      },
                      child: Card(
                        elevation: 2,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(_users),
                      ),
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }
}
