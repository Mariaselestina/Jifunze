import 'package:flutter/material.dart';


class EnvironmentBB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/street1.jpg',
                fit: BoxFit.fill),
          ),
           Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 1.2,
            child:Image.asset('assets/images/characters/boydressed.png',
               
              width: 50,
              height: 90,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
