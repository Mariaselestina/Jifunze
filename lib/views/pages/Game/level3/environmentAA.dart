import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnvironmentAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/environment/envthreestreet2.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
