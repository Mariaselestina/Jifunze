

import 'package:flutter/material.dart';

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
                'assets/images/a.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
