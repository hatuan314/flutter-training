import 'package:flutter/material.dart';
import 'package:flutterdemoapp/ui/view_model/counter.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'provider_config.dart';

/// State -> Statefull vs Stateless
/// Statefull: là 1 widget, nó có khả năng tự cập nhật(Tự thay đổi state) của
/// chính nó
/// Stateless: là 1 widget, nó ko có khả năng tự cập nhật lại chính nó.
///
void main() => runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child:  MyApp()));


