import 'package:flutter/material.dart';

import 'package:flutterdemoapp/ui/widget/first_screen.dart';
import 'package:flutterdemoapp/ui/widget/login_provider.dart';
import 'package:flutterdemoapp/ui/widget/login_screen.dart';
import 'package:flutterdemoapp/ui/widget/second_screen.dart';
import 'package:flutterdemoapp/ui/widget/third_screen.dart';
import 'ui/widget/splash_screen.dart';

/// Màu chủ đạo
/// font chữ
/// mode: dark mode or light mode
/// MaterialApp -> là 1 StatefullWidget, dùng để thiết lập các giá trị mặc định
/// / thuộc tính dùng chung cho UI của cả app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginProviderScreen(),
    );
  }
}
