import 'package:flutter/material.dart';

class MyprofileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final buttonLine = Row(
      children: <Widget>[
        FloatingActionButton (
          onPressed: () {
            print ("something");
          },
          child: Icon(Icons.add),
          mini: true,
          backgroundColor: Colors.white54,
        ),
        SizedBox(height: 50),
        FloatingActionButton (
          onPressed: () {
            print ("something");
          },
          child: Icon(Icons.access_alarm),
          mini: true,
          backgroundColor: Colors.white54,
        ),

      ],
    );

    return Container (
      margin: EdgeInsets.only(
        top: 160.0
      ),
      width: 200.0,
      height: 50.0,
      child: Center(
        child: buttonLine,
      ),
    );
  }
}