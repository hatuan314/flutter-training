import 'package:contact_app/common/constant/routes_list.dart';
import 'package:contact_app/router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: RoutesList.contactsList,
      onGenerateRoute: router(),
    );
  }

}