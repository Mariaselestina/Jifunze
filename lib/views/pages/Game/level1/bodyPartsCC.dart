import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyPartsCC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/environment/env1cschool.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0.42, -0.1),
                      child: Container(
              
              width: 240, height: 207,
              color: Colors.blue,

              

              child:Image.asset('assets/images/a.jpg',fit: BoxFit.fill,),
            ),
          ),
        ],
      ),
    );
  }
}
