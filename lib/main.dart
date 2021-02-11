import 'package:flutter/material.dart';
import './Dashboard.dart';
import './DisplayCategory.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    // home:DisplayCategory(),
    home:DisplayCategory(),
  );
}
