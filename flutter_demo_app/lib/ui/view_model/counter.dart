import 'package:flutter/foundation.dart';
import 'package:flutterdemoapp/ui/view_model/base_view_model.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class Counter extends BaseViewModel{
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}