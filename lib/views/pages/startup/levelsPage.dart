import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';

class LevelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            'assets/images/environment/levels.svg',
            width: 200,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
         Positioned(
              bottom: 285,
              left: MediaQuery.of(context).size.width / 4,
              child: InkWell(
                  onTap: () {
                  Navigator.pushNamed(context, bodyPartsLevelsPage);
                  },
                  child: Container(height: 60, width: 60))),
          Positioned(
              bottom: 225,
              left: MediaQuery.of(context).size.width / 2.1,
              child: InkWell(
                  onTap: () {
               Navigator.pushNamed(context, presentsLevelsPage);
                  },
                  child: Container(height: 60, width: 60))),
          Positioned(
              bottom: 105,
              left: MediaQuery.of(context).size.width / 1.25,
              child: InkWell(
                  onTap: () {
                   Navigator.pushNamed(context, environmentLevelsPage);
                  },
                  child: Container(height: 60, width: 60))),
      ],
    ));
  }
}
