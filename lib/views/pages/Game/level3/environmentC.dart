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
                SizedBox(height: 5),
               Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: kWeight,
                    height: kHeight,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.pushNamed(context, environmentCC);
                      },
                      color: Colors.red,
                      child: Text(
                        "BACK",
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: tSize,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, environmentCC);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
