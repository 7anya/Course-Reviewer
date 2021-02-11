
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Dropdown.dart';
class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DashboardState extends State<Dashboard> {

  List <String> code=  <String>["CS F211 DSA","CS F213 OOPS"];

  List <String> name=  <String>["CS F211","CS F213"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Course reviewer"),
        ),
        body: Container(
          child: Row(
            children: [
              Dropdown(code),
              // Dropdown(),
              // Dropdown (),
            //   ElevatedButton(
            //     child: Text("Search reviews"),
            //     onPressed: null,
            //   )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // onPressed: _showMyDialog,
          child: Icon(Icons.add_outlined),
          backgroundColor: Colors.green,
        ));
  }
}