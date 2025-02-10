import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier{

  List<int> selectedItems =[];
  List<int> get mySelectedItems => selectedItems;

  void addItems(int value){
    selectedItems.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    selectedItems.remove(value);
    notifyListeners();
  }

}