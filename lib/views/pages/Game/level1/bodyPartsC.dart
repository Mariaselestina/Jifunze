import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jifunze/views/components/characters/boyClothes.dart';
import 'package:jifunze/views/components/characters/girlClothes.dart';

class BodyPartsC extends StatefulWidget {
  @override
  _BodyPartsCState createState() => _BodyPartsCState();
}

class _BodyPartsCState extends State<BodyPartsC> {
   bool _isBoyClothes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [          
          _isBoyClothes ? BoyClothes() : GirlClothes(),
          Row(children: [
            InkWell(
              onTap: () {
               
                setState(() {
                  _isBoyClothes = false;
                });
              },
              child: Container(
                height: 60,
                width: 90,
              child: SvgPicture.asset(
              'assets/images/characters/girl.svg',
              fit: BoxFit.fill,
            ),
              ),
            ),
            InkWell(
              onTap: () {
              
                setState(() {
                  _isBoyClothes = true;
                });
              },
              child: Container(
                height: 50,
                width: 70,
              child: SvgPicture.asset(
              'assets/images/characters/boy.svg',
              fit: BoxFit.fill,
            ),
              ),
            ),
          ]),
         
        ],
      ),
      
    );
  }
}