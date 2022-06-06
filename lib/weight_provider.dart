import 'package:flutter/material.dart';

class WeightProvider extends ChangeNotifier {
  double weight = 10;

  void changeWeight(double newWeight){
    weight = newWeight;
    notifyListeners();
  }
}