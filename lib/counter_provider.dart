import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int currentValue = 0;
  bool isEven = true;

  void addValue(){
    currentValue = currentValue + 1;
    if (currentValue % 2 == 0){
      isEven = true;
    } else {
      isEven = false;
    }
    notifyListeners();
  }

  void reduceValue(){
    currentValue = currentValue - 1;
    if (currentValue % 2 == 0){
      isEven = true;
    } else {
      isEven = false;
    }
    notifyListeners();
  }
}