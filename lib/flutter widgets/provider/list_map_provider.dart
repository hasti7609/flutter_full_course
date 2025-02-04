import 'package:flutter/material.dart';

class FormMapProvider extends ChangeNotifier{

  List<Form> _myData = [];

  void  addData(Map<String,dynamic> newData){
    _myData.add(newData[""]);
    notifyListeners();
  }


}