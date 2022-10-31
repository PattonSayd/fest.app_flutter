import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get getCurrentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
