import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import 'package:jifunze/constants/routes.dart';

class BeginingPresents extends StatelessWidget {
  final double kHeight = 40.0;
  final double kWeight = 65.0;
  final double tSize = 11.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/storyline/birthday.PNG',
              fit: BoxFit.fill),
          // child: SvgPicture.asset(
          //   'assets/images/environment/introduction.svg',
          //   fit: BoxFit.fill,
          // ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 8,
          left: MediaQuery.of(context).size.width / 1.3,
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL, // default
            front: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'assets/images/storyline/present.png',
                fit: BoxFit.fill,
              ),
            ),
            back: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'assets/images/storyline/present2.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 8,
          left: MediaQuery.of(context).size.width / 1.6,
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL, // default
            front: Container(
              height: 50,
              width: 60,
              child: Image.asset(
                'assets/images/storyline/present3.png',
                fit: BoxFit.fill,
              ),
            ),
            back: Container(
              height: 50,
              width: 60,
              child: Image.asset(
                'assets/images/storyline/car.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.home, color: Colors.orangeAccent, size: 50),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: kWeight,
            height: kHeight,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.yellow)),
              onPressed: () {
                Navigator.pushNamed(context, bodyPartsA);
              },
              color: Colors.red,
              child: Text(
                "BACK",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: tSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: kWeight,
            height: kHeight,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.yellow)),
              onPressed: () {
                Navigator.pushNamed(context, presentCard);
              },
              color: Colors.red,
              child: Text(
                "NEXT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: tSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
