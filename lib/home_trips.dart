import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new DescriptionPlace("Bogotá", 3.5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
            new ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}