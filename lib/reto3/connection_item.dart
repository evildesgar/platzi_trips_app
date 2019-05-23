import 'package:flutter/material.dart';
import 'package:platzi_trips_app/objects/connection.dart';

class ConnectionItem extends StatelessWidget {

  Connection mConnection;
  ConnectionItem(this.mConnection);

//  String userName, petName, connectionType, petImage;
//  ConnectionItem(this.userName, this.petName, this.connectionType, this.petImage);

  @override
  Widget build(BuildContext context) {

    final photoPet = Container (
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.mConnection.mPet.petImage)
        ),
      ),
    );

    final txtUserName = Container(
      width: 200.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Text(this.mConnection.mUser.userName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final txtPetName = Container(
      child: Text("Movie: " + this.mConnection.mPet.petName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
        ),
      ),
    );
    final txtConnectionType = Container(
      child: Text(this.mConnection.connectionType,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
        ),
      ),
    );

    final connectionDetails = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        txtUserName,
        txtPetName,
        txtConnectionType,
      ],
    );


    final msgIcon = Container(
      child: Icon(
        Icons.message,
        color: Color(0xFFf2C611),
      ),

    );

    return Row (
      children: <Widget>[
        photoPet,
        connectionDetails,
        msgIcon
      ],
    );
  }
}