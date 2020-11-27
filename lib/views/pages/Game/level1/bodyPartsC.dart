import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jifunze/constants/routes.dart';
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
          Positioned(
                 bottom: MediaQuery.of(context).size.height / 1.2,
            left: MediaQuery.of(context).size.width / 1.8,
                      child: Row(children: [
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
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
        ],
      ),
      
    );
  }
}