import 'package:flutter/material.dart';
import 'package:platzi_trips_app/reto4/pet_info.dart';
import 'package:platzi_trips_app/objects/pet.dart';

class MyPetsItem extends StatelessWidget {

  Pet myPet;

  MyPetsItem(this.myPet);

  @override
  Widget build(BuildContext context) {

    final cardPetPhoto = Container (
      height: 250.0,
      width: 330.0,
      margin: EdgeInsets.only(
          top: 0.0,
          left: 20.0,
          right: 20.0
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(this.myPet.petImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );

    return Stack (
      alignment: Alignment(-0.4, -0.5),
      children: <Widget>[
        cardPetPhoto,
        PetInfo(myPet),
        //FloatingActionButtonGreen(),
      ],
    );

  }
}