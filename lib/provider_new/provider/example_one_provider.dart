import 'dart:async';

import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier{

  double _value = 1;

  double get val => _value;

  void setValue(double newValue){
    _value = newValue;
    notifyListeners();
  }

}

class AnimatedContainerProvider with ChangeNotifier{

    double _height = 200.00;
    double _width = 200.00;
    Color _color = Colors.amber;
    double _top = 20.00;
    double _left = 20.00;
    double _right = 20.00;
    double _bottom = 20.00;


    double get height => _height;
    double get width => _width;
    Color get color => _color;
    double get top => _top;
    double get left => _left;
    double get right => _right;
    double get bottom => _bottom;

    AnimatedContainerProvider(){
      Timer.periodic(Duration(seconds: 1), (timer){
        updatedContainer();
        notifyListeners();
      });
    }

    void updatedContainer(){
      _height = _height==200.00?300.00:200.00;
      _width = _width==200.00?300.00:200.00;
      _left = _left==200.00?300.00:200.00;
      _right = _right==20.00?30.00:20.00;
      _bottom = _bottom==20.00?30.00:20.00;
      _top = _top==200.00?300.00:200.00;
      _color = _color==Colors.amber?Colors.cyan:Colors.amber;
    }

}