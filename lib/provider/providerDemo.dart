import 'package:flutter/material.dart';

class ProviderDemo extends ChangeNotifier {
  String test1 = "welcome";

  void changeValue() {
    test1 = "to Page 1";
    notifyListeners();
  }
}
