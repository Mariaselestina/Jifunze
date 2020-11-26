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
            bottom: MediaQuery.of(context).size.height /3,
            right: MediaQuery.of(context).size.width / 1.35,
             child: Container(
               height: 150,
               width: 150,
               child: Image.asset(
                'assets/images/environment/butterfly2.gif',            
                fit: BoxFit.cover, 
            ),
             ),
          ),
         Positioned(
              bottom: 285,
              left: MediaQuery.of(context).size.width / 4,
              child: InkWell(
                  onTap: () {
                  Navigator.pushNamed(context, beginingPage);
                  },
                  child: Container(height: 70, width: 70, ))),
          Positioned(
              bottom: 190,
              left: MediaQuery.of(context).size.width / 2.3,
              child: InkWell(
                  onTap: () {
               Navigator.pushNamed(context, presentsLevelsPage);
                  },
                  child: Container(height: 70, width: 70, ))),
          Positioned(
              bottom: 105,
              left: MediaQuery.of(context).size.width / 1.25,
              child: InkWell(
                  onTap: () {
                   Navigator.pushNamed(context, environmentLevelsPage);
                  },
                  child: Container(height: 70, width: 70, ))),
      ],
    ));
  }
}
