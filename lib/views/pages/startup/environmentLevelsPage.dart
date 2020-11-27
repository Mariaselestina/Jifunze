import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentLevelsPage extends StatelessWidget {
  final double kHeight = 40.0;
  final double kWeight = 65.0;
  final double tSize = 11.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            'assets/images/environment/levels2.svg',
            width: 200,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 8,
            left: MediaQuery.of(context).size.width / 6,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, environmentA);
                },
                child: Container(
                  height: 80,
                  width: 130,
                ))),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 2.2,
            left: MediaQuery.of(context).size.width / 2.5,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, environmentB);
                },
                child: Container(
                  height: 80,
                  width: 130,
                ))),
        Positioned(
            bottom: MediaQuery.of(context).size.width / 6.7,
            left: MediaQuery.of(context).size.width / 1.5,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, environmentC);
                },
                child: Container(
                  height: 80,
                  width: 130,
                ))),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.home, color: Colors.orangeAccent, size: 50),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
       
      ],
    ));
  }
}
