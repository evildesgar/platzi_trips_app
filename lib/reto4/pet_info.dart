import 'package:flutter/material.dart';
import 'package:platzi_trips_app/objects/pet.dart';

class PetInfo extends StatelessWidget {

  Pet myPet;

  PetInfo(this.myPet);

  @override
  Widget build(BuildContext context) {

    final cardDetails = Column (
      children: <Widget>[
        Text(this.myPet.petName,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black54,
              fontFamily: "Lato",
              fontSize: 17.0,
              fontWeight: FontWeight.w900,
            )
        ),
        Text(this.myPet.countLikes.toString() + " Likes"),
      ],
    );

    final details = Container(
        margin: EdgeInsets.only(
          top: 220.0,
          left: 40.0,
        ),
        width: 230.0,
        height: 80.0,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white70,
            border: Border.all(color: Colors.indigo)
        ),
        child: cardDetails,
    );
    return details;
  }
}