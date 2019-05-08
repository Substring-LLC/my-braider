import 'package:flutter/material.dart';
import './login/root_page.dart';
import './login/auth.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Braider',
      theme: new ThemeData(
        primarySwatch: Colors.blueAccent[900],
      ),
      home: new RootPage(auth: new Auth()),
    );
  }
}