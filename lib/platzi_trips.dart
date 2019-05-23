import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class PlatziTrips extends StatefulWidget {

  @override
  State createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;
  final List<Widget> widgestChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      body: widgestChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                ),
              ]
          ),
        )
    );
  }

}