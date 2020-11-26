


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/views/components/characters/boyBodyParts.dart';
import 'package:jifunze/views/components/characters/girlBodyParts.dart';

class BodyPartsB extends StatefulWidget {
  @override
  _BodyPartsBState createState() => _BodyPartsBState();
}

class _BodyPartsBState extends State<BodyPartsB> {
  bool _isBoy = false;
  final double kHeight = 50.0;
  final double kWeight = 150.0;
  final double tSize = 15.0;
      

  @override
  Widget build(BuildContext context) {
    //final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _isBoy ? Boy() : Girl(),
          Row(children: [
            InkWell(
              onTap: () {
               
                setState(() {
                  _isBoy = false;
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
                  _isBoy = true;
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
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: kWeight,
                    height: kHeight,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.pushNamed(context, bodyPartsLevelsPage);
                      },
                      color: Colors.red,
                      child: Text(
                        "BACK",
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: tSize,
                        ),
                      ),
                    ),
                  ),
                  
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, bodyPartsC);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  
   
}
