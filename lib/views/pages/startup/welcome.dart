
import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class WelcomePage extends StatelessWidget {
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
          child: Image.asset(
            'assets/images/environment/welcome.PNG',
            fit: BoxFit.cover,
          ),
        ),

        // Positioned(
        //    top: MediaQuery.of(context).size.height / 3,
        //   left: MediaQuery.of(context).size.width / 2.8,
        //   child: Column(
        //     children:[
        //       Text(
        //     'Welcome',
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //         color: Colors.black,
        //         fontSize: 40,
        //         fontWeight: FontWeight.bold),
        //   ),
        //  Text(
        //     '\n \n Welcome to HappyToto \n\n game aimong to help your children \n\n protect themselves against child sexual abuse!!',
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold),
        //   ),
        //     ]

        //   )

        // )

        //  Align(
        //    alignment: Alignment.bottomRight,
        //             child: Container(

        //       width: kWeight,
        //       height: kHeight,
        //       child: RaisedButton(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10.0),
        //             side: BorderSide(color: Colors.yellow)),
        //         onPressed: () {
        //           Navigator.pushNamed(context, levelsPage);
        //         },
        //         color: Colors.white,
        //         child: Text(
        //           "NEXT",
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontSize: tSize,
        //             fontWeight: FontWeight.bold
        //           ),
        //         ),
        //       ),
        //     ),
        //  ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 13,
          right: MediaQuery.of(context).size.width / 9,
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 50,
            ),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
      ]),
    );
  }

  
}
