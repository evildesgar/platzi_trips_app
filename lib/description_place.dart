import 'package:flutter/material.dart';
import 'button_purpple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  double stars;
  String descPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descPlace);


  @override
  Widget build(BuildContext context) {

    final star = Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container (
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container (
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            this.namePlace,
            style: TextStyle(
              fontSize: 30.0,
                fontFamily: "Lato",
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border
          ],
        )

      ],
    );

    final desc_place = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),

      child: Text(
        this.descPlace,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        desc_place,
        ButtonPurple("Navigate")
      ],
    );
  }
}