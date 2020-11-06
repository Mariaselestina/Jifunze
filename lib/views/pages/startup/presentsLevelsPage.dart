import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PresentsLevelsPage extends StatelessWidget {
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
              bottom: 260,
              left: MediaQuery.of(context).size.width / 4.3,
              child: InkWell(
                  onTap: () {
                 // Navigator.pushNamed(context, bodyPartsA);
                  },
                  child: Container(height: 65, width: 200, color: Colors.black))),
          Positioned(
              bottom: 183,
              left: MediaQuery.of(context).size.width / 2.6,
              child: InkWell(
                  onTap: () {
              // Navigator.pushNamed(context, bodyPartsB);
                  },
                  child: Container(height: 65, width: 200, color: Colors.red))),
          Positioned(
              bottom: 105,
              left: MediaQuery.of(context).size.width / 1.8,
              child: InkWell(
                  onTap: () {
                 // Navigator.pushNamed(context, bodyPartsC);
                  },
                  child: Container(height: 65, width: 200, color: Colors.blue))),
      ],
    )
      
    );
  }
}