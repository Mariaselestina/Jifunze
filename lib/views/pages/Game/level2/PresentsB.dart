import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';



class PresentsB extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: [
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3,
          right: MediaQuery.of(context).size.width / 1.9,
                      child: Container(
              height: 210,
              width: 300,
              child: Image.asset('assets/images/environment/envtwoBhome.png',
                  fit: BoxFit.cover),
            ),
          ),
           Positioned(
          bottom: MediaQuery.of(context).size.height / 3,
          right: MediaQuery.of(context).size.width / 1.5,
          child: Container(
            height: 60,
            width: 60,
            child: Image.asset(
              'assets/images/gifimages/gift.gif',
              fit: BoxFit.cover,
            ),
          ),
        ),
         Positioned(
              bottom: MediaQuery.of(context).size.height / 3,
          left: MediaQuery.of(context).size.width / 1.9,
                      child: Container(
              height: 210,
              width: 300,
              child: Image.asset('assets/images/environment/envtwoBstreet.png',
                  fit: BoxFit.fill),
            ),
          ),
           Positioned(
          bottom: MediaQuery.of(context).size.height / 3,
          left: MediaQuery.of(context).size.width / 1.1,
          child: Container(
            height: 60,
            width: 60,
            child: Image.asset(
              'assets/images/gifimages/gift.gif',
              fit: BoxFit.cover,
            ),
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
               Icons.arrow_forward_ios,
                color: Colors.red,
                size: 60,
              ),
              onPressed: () {
                Navigator.pushNamed(context, presentsC);
              },
            ),
          ),
        ],
      ),
    );
  }
}

