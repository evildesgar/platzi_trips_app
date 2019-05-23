import 'package:flutter/material.dart';
import 'package:platzi_trips_app/objects/user.dart';

class MyProfileItem extends StatelessWidget {

  User mUser;

  MyProfileItem(this.mUser);

  @override
  Widget build(BuildContext context) {

    final txtUserName = Container(
      margin: EdgeInsets.only(
        top: 18.0
      ),
      child: Text(this.mUser.userName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final txtUserInstitution = Container(
      child: Text(this.mUser.userProfileImagePath,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.white
        ),
      ),
    );

    // TODO : harcoded image icon
    mUser.userProfileImagePath = "assets/img/user.png";
    final photo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0
      ),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.mUser.userProfileImagePath)
        ),
      ),
    );

    final profileInfo = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        txtUserName,
        txtUserInstitution,
      ],
    );

    return Container(
      height: 160.0,
      padding: EdgeInsets.only(
        top:90.0,
      ),
      child: Row(
        children: <Widget>[
          photo,
          profileInfo,
        ],
      ),
    );
  }
}