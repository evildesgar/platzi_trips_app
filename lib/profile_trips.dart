import 'package:flutter/material.dart';
import 'gradiant_back.dart';
import 'reto4/mypets_item_list.dart';
import 'reto4/myprofile_item.dart';
import 'objects/user.dart';
import 'reto4/myprofile_buttons.dart';

class ProfileTrips extends StatelessWidget {

  User mUser;

  @override
  Widget build(BuildContext context) {

    mUser = new User("1", "Pedro Infante", "Singer / Traveler");

    final settingsButton = Container(
      margin: EdgeInsets.only(
        top: 60.0,
        left: 300.0
      ),
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.lightBlue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(Icons.settings),
          color: Colors.grey,
          iconSize: 25.0,
          tooltip: "Edit profile",
          onPressed: () {
            print("Edit Settings");
          },
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        GradiantBack("Profile"),
        settingsButton,
        MyprofileButtons(),
        MyProfileItem(mUser),
        MyPetsItemList(),
      ],
    );
  }
}