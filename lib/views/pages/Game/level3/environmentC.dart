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
             child: Image.asset('assets/images/environment/env1chome.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment(0.42, -0.1),
            child: Container(
              width: 240,
              height: 207,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/a.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(height: 4, color: Colors.blue)),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: Container(height: 4, color: Colors.grey)),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
               ],
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
                Navigator.pushNamed(context, environmentCC);
              },
            ),
          ),
        ],
      ),
    );
  }
}
