import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:yugioh/home.dart';

final appTitle = 'Yu-Gi-Oh! Card Deck';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.cyan[600],
          primaryColor: const Color(0xFF3B4254)),
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}
