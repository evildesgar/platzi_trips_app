import 'package:flutter/material.dart';
import 'connection_item.dart';
import 'package:platzi_trips_app/objects/connection.dart';
import 'package:platzi_trips_app/objects/pet.dart';
import 'package:platzi_trips_app/objects/user.dart';

class ConnectionItemList extends StatelessWidget {

  List<Connection> mConnections = List(5);

  @override
  Widget build(BuildContext context) {

    mConnections[0] = new Connection(new Pet("1", "Forest Gump", "assets/img/user.png"), new User("1", "Tom Hanks", ""), "On line");
    mConnections[1] = new Connection(new Pet("1", "Matrix", "assets/img/user.png"), new User("1", "Keanu Reaves", ""), "On line");
    mConnections[2] = new Connection(new Pet("1", "Misión Imposible", "assets/img/user.png"), new User("1", "Tom Cruise", ""), "Off line");
    mConnections[3] = new Connection(new Pet("1", "Troya", "assets/img/user.png"), new User("1", "Brad Pitt", ""), "Away");
    mConnections[4] = new Connection(new Pet("1", "Back to the future", "assets/img/user.png"), new User("1", "Michael J Fox", ""), "Busy");

    var connectionList = List<Widget>();
    /*for (int i = 0; i <= 4; i++) {
      connectionList.add(new ConnectionItem(mConnections[i]));
    print(i);
    }*/

    for(Connection iConnection in mConnections) {
      connectionList.add(new ConnectionItem(iConnection));
    }

    return Column (children: connectionList);
  }
}