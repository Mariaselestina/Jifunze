import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';

class BodyPartsLevelsPage extends StatelessWidget {
  
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
              top:MediaQuery.of(context).size.height / 8,
              left: MediaQuery.of(context).size.width / 6,
              child: InkWell(
                  onTap: () {
                  Navigator.pushNamed(context, bodyPartsA);
                  },
                  child: Container(height: 80, width: 130, ))),
          Positioned(
              bottom:MediaQuery.of(context).size.height/ 2.2,
              left: MediaQuery.of(context).size.width / 2.5,
              child: InkWell(
                  onTap: () {
               Navigator.pushNamed(context, bodyPartsB);
                  },
                  child: Container(height: 80, width: 130,))),
          Positioned(
              bottom:MediaQuery.of(context).size.width / 6.7,
              left: MediaQuery.of(context).size.width / 1.5,
              child: InkWell(
                  onTap: () {
                  Navigator.pushNamed(context, bodyPartsC);
                  },
                  child: Container(height: 80, width: 130,))),
      Positioned(
            bottom: MediaQuery.of(context).size.height /3.5,
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
      Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.home, color: Colors.blue, size: 70),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
       
      ],
    ));
  }
}
