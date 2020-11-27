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
          Positioned(
            bottom: MediaQuery.of(context).size.height / 1.2,
            left: MediaQuery.of(context).size.width / 1.35,
            child: Row(children: [
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
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.home, color: Colors.blue, size: 70),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.1,
            child: IconButton(
              icon: Icon(
                Icons.navigate_before_rounded,
                color: Colors.red,
                size: 70,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 14,
            child: IconButton(
              icon: Icon(
                Icons.double_arrow_rounded,
                color: Colors.red,
                size: 60,
              ),
              onPressed: () {
                Navigator.pushNamed(context, bodyPartsLevelsPage);
              },
            ),
          ),
        ],
      ),
    );
  }
}
