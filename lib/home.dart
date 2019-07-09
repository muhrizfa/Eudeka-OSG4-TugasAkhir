import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yugioh/gridview.dart';
import 'package:yugioh/main.dart';
import 'package:yugioh/model.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'dart:async';

Future<List<Cardinfo>> fetchPosts(http.Client client) async {
  final response =
      await client.get('https://db.ygoprodeck.com/api/v5/cardinfo.php');

  return compute(parsePosts, response.body);
}

List<Cardinfo> parsePosts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Cardinfo>((json) => Cardinfo.fromJson(json)).toList();
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('Exit Application'),
            content: new Text('Are you sure you want to exit?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  var gridview = FutureBuilder<List<Cardinfo>>(
      future: fetchPosts(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? GridViewList(cardinfo: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: _onWillPop,
        child: new DefaultTabController(
          length: 2,
          child: new Scaffold(
            backgroundColor: Color(0xFF3B4254),
            appBar: new AppBar(
              title: new Text(appTitle),
              centerTitle: true,
            ),
            body: gridview,
          ),
        ));
  }
}
