import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './CategoryCard.dart';
// import './PopUpToCreateCard.dart';
// import 'package:intl/intl.dart';

class DisplayCategory extends StatefulWidget {
  DisplayCategory({Key key}) : super(key: key);

  @override
  _DisplayCategoryState createState() => _DisplayCategoryState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DisplayCategoryState extends State<DisplayCategory> {
  List <Widget> ItemList= <Widget>[CategoryCard("plis end the semester"),CategoryCard("sleep")];
  int n=2;
  TextEditingController _instructorName = TextEditingController();
  TextEditingController _review = TextEditingController();
  TextEditingController _courseType = TextEditingController();
  void updateSize() {
    // CardNames.add(CategoryCard(widget.categoryname,_eventName.text,_eventDescrption.text,this.startTime,this.endTime,_eventQuantity.text));
    setState(() {
      n++;
    });
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a review'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          controller: _instructorName,
                          decoration:
                          InputDecoration(hintText: 'Enter Instructor name'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          controller: _review,
                          decoration:
                          InputDecoration(hintText: 'Enter Review'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          controller: _courseType,
                          decoration:
                          InputDecoration(hintText: 'Enter L, T,P for lecture tut or lab'),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Create'),
              onPressed: () {

                // Globals.firestore
                //     .collection("users")
                //     .doc(Globals.auth.currentUser.uid)
                //     .collection("categories")
                //     .doc(widget.categoryname)
                //     .update({
                //   "events": FieldValue.arrayUnion([
                //     {
                //       "name": _eventName.text,
                //       "description": _eventDescrption.text,
                //       "quantity": _eventQuantity.text,
                //       "TimeOfStart": startTime,
                //       "TimeOfEnd": endTime,
                //     }
                //   ])
                // }
                // );
                // updateSize();
                //TODO calender imput
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

          return Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xffff40082),
                title: Text("Course Name"),
              ),
              body: Container(
                  color: Color(0xfffffebee),
                  child: Center(
                      child: Column(
                        children: [


                          Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.all(8),
                                  itemCount: n,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      // color: Colors.amber[colorCodes[index]],
                                      child:  ItemList[index],
                                    );
                                  })
                          )
                          ,
                        ],
                      ))),
              floatingActionButton: FloatingActionButton(
                onPressed: _showMyDialog,
                child: Icon(Icons.add_outlined),
                backgroundColor: Color(0xffff40082),
              ));


  }
}