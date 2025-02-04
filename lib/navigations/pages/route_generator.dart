import 'package:flutter/material.dart';
import 'package:starting_flutter/navigations/pages/intro_pages.dart';
import 'package:starting_flutter/navigations/pages/second_page.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case'/':
        return MaterialPageRoute(builder: (_)=>IntroPages());
        case'/second':
          if(args is String){
            return MaterialPageRoute(builder: (_)=>SecondPage(items: args,));
          }
      default:
        return _errorRoute();
    }
    return _errorRoute();
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Here Is An Error!!"),
        ),
      );
    }
    );
  }
}
