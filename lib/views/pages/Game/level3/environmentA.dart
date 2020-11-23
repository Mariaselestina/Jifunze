import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnvironmentA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/envthree1.png',
                fit: BoxFit.fill),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 1.3,
            left: MediaQuery.of(context).size.width / 3,
            child: SvgPicture.asset(
              'assets/images/characters/girldressed.svg',
              width: 40,
              height: 90,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
