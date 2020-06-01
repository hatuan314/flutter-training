import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  /// Scaffold -> là 1 Widget, cung cấp 1 form UI dạng Material Design
  ///
  /// Column -> Tập hợp các widget theo chiều dọc
  /// thuộc tính mainAxisAlignment:
  /// start -> các widget nằm ở trên cùng
  /// center -> Các widget nằm ở giữa
  /// end -> Các widget nằm ở cuối
  /// spaceAround -> Các widget cách đều nhau và cách đều 2 cạnh trên, dưới
  /// spaceBetween -> Các widget cách đều nhau
  /// thuộc tính crossAxisAlignment:
  ///
  /// Row -> Tập hợp các widget theo chiều ngang
  /// thuộc tính mainAxisAlignment: giông với Column nhưng theo chiều ngang

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Container(
//        color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.check, color: Colors.white),
                  Text('invest', style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ))
                ],
              ),
              Text("Let money\nwork for you!", style: TextStyle( // Xet cac thuoc tinh cua Text
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 3, // So dong nhieu nhat de hien thi text
              textAlign: TextAlign.center, // Can le cho text
              ),
            ],
          ),
        ),
      ),
    );
  }

}