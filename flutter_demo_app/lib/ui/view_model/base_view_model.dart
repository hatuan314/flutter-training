import 'package:flutter/cupertino.dart';

class BaseViewModel extends ChangeNotifier {
  bool _busy = false;

  bool get isBusy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
    debugPrint('setBusy: $value');
  }
}
