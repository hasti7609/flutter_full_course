import 'package:flutter/material.dart';
import 'package:starting_flutter/bottom_nav_bar/views/home_screen_bottom_bar.dart';
import 'package:starting_flutter/bottom_nav_bar/views/profile_screen_bottom_bar.dart';
import 'package:starting_flutter/bottom_nav_bar/views/settings_screen_bottom_bar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int _currentIndex =0;

  List screenList =[
    HomeScreenBottomBar(),
    ProfileScreenBottomBar(),
    SettingsScreenBottomBar()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar Screen"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade200
                ),
                child: Column(
                  children: [
                    Text("Hasti",
                    style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                )
            ),
            Column(
              children: [
                InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>HomeScreenBottomBar()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>SettingsScreenBottomBar()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>
                            ProfileScreenBottomBar()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          ],
      ),
    );
  }
}
