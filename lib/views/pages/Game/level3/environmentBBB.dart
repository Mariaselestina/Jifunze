import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:flutter_svg/svg.dart';


class EnvironmentBBB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/interiorthreeB.png',
                fit: BoxFit.fill),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.17,
            child: Container(
              
            height: MediaQuery.of(context).size.height,
            width: 100,
            color: Colors.white,
            child: Align(
                alignment: Alignment.center,
            
              child:Image.asset('assets/images/characters/stranger.png',
                
                width: 50,
              height: 150,fit: BoxFit.fill,
              ),
            ),
          ),
          ),
           Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 2.8,
      child: SvgPicture.asset(
                'assets/images/characters/boydressed.svg',
               
              width: 70,
              height: 110,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height /2.7,
            right: MediaQuery.of(context).size.width / 1.11,
            child: InkWell(
                          child: Image.asset(
                'assets/images/characters/girldressed.png',
                width: 40,
                height: 100,
                fit: BoxFit.cover,
              ),
              onTap: () {
                 
                  },
            ),
          ),
            Positioned(
            top: MediaQuery.of(context).size.height / 2.4,
            right: MediaQuery.of(context).size.width / 1.2,
            child:Image.asset('assets/images/characters/stranger.png',
               
              width: 50,
              height: 120,
              fit: BoxFit.fill,
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
                size: 60,
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
                Navigator.pushNamed(context, environmentC);
              },
            ),
          ),
        ],
      ),
    );
  }
}
