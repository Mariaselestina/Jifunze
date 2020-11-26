


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jifunze/constants/routes.dart';

import 'package:jifunze/views/components/characters/boyparts.dart';

import 'package:jifunze/views/components/characters/girlparts.dart';

class BodyPartsA extends StatefulWidget {
  
  @override
  _BodyPartsAState createState() => _BodyPartsAState();
}

class _BodyPartsAState extends State<BodyPartsA> {
  bool _isBoy2 = false;
  final double kHeight = 40.0;
  final double kWeight = 65.0;
  final double tSize = 11.0;
      

  @override
  Widget build(BuildContext context) {
    //final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _isBoy2 ? Boy2() : Girl2(),
          Row(children: [
            InkWell(
              onTap: () {
               
                setState(() {
                  _isBoy2 = false;
                });
              },
              child: Container(
                height: 60,
                width: 90,
              child: SvgPicture.asset(
              'assets/images/characters/girl.svg',
              fit: BoxFit.fill,
            ),
              ),
            ),
            InkWell(
              onTap: () {
              
                setState(() {
                  _isBoy2 = true;
                });
              },
              child: Container(
                height: 50,
                width: 70,
              child: SvgPicture.asset(
              'assets/images/characters/boy.svg',
              fit: BoxFit.fill,
            ),
              ),
            ),
          ]),
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
                Navigator.pushNamed(context, bodyPartsLevelsPage);
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
        ],
      ),
    );
  }
  
   
}
