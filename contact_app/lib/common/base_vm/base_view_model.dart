import 'package:flutter/material.dart';

class BaseVM  extends ChangeNotifier {
  bool _busy = false;

  bool get isBusy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
    debugPrint('setBusy: $value');
  }
}