import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class EnvironmentC extends StatelessWidget {
  final double kHeight = 50.0;
  final double kWeight = 150.0;
  final double tSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
             child: Image.asset('assets/images/environment/envthreec.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment(0.44, 1.3),
            child: Container(
              width: 240,
              height: 207,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/gifimages/carmoving.gif',
                fit: BoxFit.fill,
              ),
            ),
          ),
            Positioned(
          bottom: MediaQuery.of(context).size.height / 1.3,
          right: MediaQuery.of(context).size.width / 1.7,
          child: Container(
            height: 100,
            width: 90,
            child: Image.asset(
              'assets/images/gifimages/butterfly.gif',
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
         
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.1,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
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
               Icons.arrow_forward_ios,
                color: Colors.red,
                size: 60,
              ),
              onPressed: () {
                Navigator.pushNamed(context, environmentCC);
              },
            ),
          ),
        ],
      ),
    );
  }
}
