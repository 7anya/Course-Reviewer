
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CategoryCard extends StatefulWidget {
  CategoryCard(this.label);
  final String label;
  @override
  // _CategoryCardState createState() => _CategoryCardState();
  State<StatefulWidget> createState() {
    return _CategoryCardState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _CategoryCardState extends State<CategoryCard> {

  // String CardName=;
  bool valuefirst = false;
  final myController = TextEditingController();
  // final  Mycontroller=new TextEditingController() ;

  // _CategoryCardState(this.CardName);
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Make an edit'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  controller: myController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Make a edit',
                    labelText: 'Name ',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Edit'),
              onPressed: () {

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
    return Row(
        children: <Widget>[
          Container(
              width:  MediaQuery.of(context).size.width/1.2,
              // height: MediaQuery.of(context).size.width/3,
            child:Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: _showMyDialog,
                child: Container(

                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.left,
                      children: [
                        Text("Instructor name: "),
                        Text("Course type:L/P/T"),
                        Text("Date: "),
                        Text("Reviewed by:"),
                        Text("Review:Review: Review:Review:Review:Review:Review:Review:Review:Review:Review:n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availabReview:Review:Review:Review:Review:Review:Review:"),
                      ],
                    )

                ),
              ),
            ),
          )


        ]
    );
  }

}