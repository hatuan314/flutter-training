import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_mAppBar(), _mBody()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _mAppBar() => Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      );

  _mBody() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _titleGroup(children: [
              _baseBigTitle('Track your'),
              _baseBigTitle('work and get'),
              _baseBigTitle('result.'),
            ]),
            SizedBox(
              height: 20,
            ),
            _titleGroup(children: [
              _baseSmallTitle('Structure work in a way that\'s'),
              _baseSmallTitle('best for you. Set priorities. Share'),
              _baseSmallTitle('details and assign tasks.'),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.more_horiz, color: Colors.white),
                Text(
                  'Skip',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            )
          ],
        ),
      );

  Widget _titleGroup({List<Widget> children}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      );

  Widget _baseBigTitle(String title) => Text(
        '$title',
        style: TextStyle(
            fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
      );

  Widget _baseSmallTitle(String title) => Text(
        '$title',
        style: TextStyle(fontSize: 18, color: Colors.white),
      );
}
