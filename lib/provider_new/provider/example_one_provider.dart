
import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier{

  double _value = 1;

  double get val => _value;

  void setValue(double newValue){
    _value = newValue;
  }

}