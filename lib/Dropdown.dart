import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  Dropdown(this.value);
  final List <String> value;
  @override
  _DropdownState createState() => _DropdownState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'CS F211 DSA';
  // List <String> values=widget.value;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 40, right: 2.0),
      width: MediaQuery.of(context).size.width/4,
      child:Row(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            // icon: Icon(Icons.person),
            style: TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.grey,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items:widget.value
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          ElevatedButton(
            child: Text("Search reviews"),
            onPressed: null,
          )

        ],
      )
      ,
    );
  }
}