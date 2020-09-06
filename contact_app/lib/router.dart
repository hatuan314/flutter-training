import 'package:contact_app/common/constant/routes_list.dart';
import 'package:contact_app/ui/contacts_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

RouteFactory router() {
  return (RouteSettings settings) {
    Widget screen = ContactsListScreen();
    final args = settings.arguments as Map<String, dynamic> ?? {};

    // todo:  add screen route here
    switch (settings.name) {
      case RoutesList.contactsList:
        screen = ContactsListScreen();
    }

    return CupertinoPageRoute(
      builder: (context) {
        ScreenUtil.init(context, width: 375, height: 812);
        return screen;
      },
    );
  };
}
