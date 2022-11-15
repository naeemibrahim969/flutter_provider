import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _value = 0;
  int get value => _value; // Getter

  void increment(){
    _value++;
    notifyListeners();
  }

  void decrement(){
    _value--;
    notifyListeners();
  }

}