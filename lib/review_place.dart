import 'package:flutter/material.dart';

class ReviewPlace extends StatelessWidget {

  String pathImage = "assets/img/user.png";
  String mName;
  String mInfo;
  String mComment;

  ReviewPlace(this.pathImage, this.mName, this.mInfo, this.mComment);

  @override
  Widget build(BuildContext context) {

    final userName = Container (
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text (
        this.mName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userInfo = Container (
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text (
        this.mInfo,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComments = Container (
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text (
        this.mComment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo,
          userComments
        ],
    );

    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.pathImage)
        ),
      ),
    );

    return Row (
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}