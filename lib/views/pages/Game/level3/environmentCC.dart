

import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentCC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/env1cschool.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment(0.42, -0.1),
            child: Container(
              width: 240,
              height: 207,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/images/washinghands.gif',
                fit: BoxFit.fill,
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
                Navigator.pushNamed(context, environmentCCC);
              },
            ),
          ),
        ],
      ),
    );
  }
}
