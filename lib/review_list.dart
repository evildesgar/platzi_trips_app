import 'package:flutter/material.dart';
import 'review_place.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final reviewList = Column (
      children: <Widget>[
        new ReviewPlace("assets/img/user.png", "Manolo", "2 reviews, 5 photos", "Manolo cree que esto es cool"),
        new ReviewPlace("assets/img/user.png", "Muñeca", "3 reviews, 6 photos", "Muñeca esta entendiendo todo muy bien"),
        new ReviewPlace("assets/img/user.png", "Hanna", "9 reviews, 0 photos", "Hanna empieza a entender como funciona"),
      ],
    );

     return reviewList;
  }
}