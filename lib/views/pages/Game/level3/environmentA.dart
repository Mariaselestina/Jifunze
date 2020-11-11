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
            child: SvgPicture.asset(
              'assets/images/environment/envthreestreet.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(children: [
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
                      Expanded(child: Container(height: 4, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: Container(height: 4, color: Colors.grey))
                    ],
                  ),
               
              SizedBox(height:20),
            ],),
          )
          
        ],
      ),
    );
  }
}
