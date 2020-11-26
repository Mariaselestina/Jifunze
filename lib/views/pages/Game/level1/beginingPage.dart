import 'package:flutter/material.dart';


import 'package:jifunze/constants/routes.dart';

class BeginingPage extends StatelessWidget {
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
          child: Image.asset( 'assets/images/environment/introduction.PNG',
          fit: BoxFit.fill,),
          // child: SvgPicture.asset(
          //   'assets/images/environment/introduction.svg',
          //   fit: BoxFit.fill,
          // ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.home, color: Colors.orangeAccent, size: 70),
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
                
                Icons.arrow_forward_ios,
                color: Colors.red,size: 70,
            
              ),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 14,
            child: IconButton(
            
              icon: Icon(
                
               Icons.arrow_forward_ios,
                color: Colors.red,size: 60,
            
              ),
              onPressed: () {
                Navigator.pushNamed(context, bodyPartsA);
              },
            ),
          ),
      ]),
    );
  }
}
