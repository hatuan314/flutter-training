import 'package:contact_app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_app/provider_config.dart' as providerConfig;

void main() => runApp(MultiProvider(
    providers: providerConfig.providers,
    child:  MyApp()));
