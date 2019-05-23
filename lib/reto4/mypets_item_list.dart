import 'package:flutter/material.dart';
import 'package:platzi_trips_app/objects/pet.dart';
import 'package:platzi_trips_app/reto4/mypets_item.dart';

class MyPetsItemList extends StatelessWidget {

  List<Pet> mMyPets = List(5);

  @override
  Widget build(BuildContext context) {
    mMyPets[0] = new Pet("1", "Farm village", "assets/img/meadows.jpg");
    mMyPets[1] = new Pet("2", "Space Launch", "assets/img/meadows.jpg");
    mMyPets[2] = new Pet("3", "Caverns", "assets/img/meadows.jpg");
    mMyPets[3] = new Pet("3", "Caverns", "assets/img/meadows.jpg");
    mMyPets[4] = new Pet("3", "Caverns", "assets/img/meadows.jpg");

    var petList = List<Widget>();

    for(Pet iPet in mMyPets) {
      petList.add(new MyPetsItem(iPet));
    }

    return Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.only(
              top: 200.0,
              bottom: 60.0
            ),
            children: <Widget>[
              new Column (children: petList)
            ],
          )
        ]
    );
//    return Column (children: petList);
  }
}