import 'package:flutter/material.dart';

class MyState with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void incCount() {
    _counter += 1;
    notifyListeners();
  }
}
