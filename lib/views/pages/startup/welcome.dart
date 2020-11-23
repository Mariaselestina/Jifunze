import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class WelcomePage extends StatelessWidget {
  final double kHeight = 50.0;
  final double kWeight = 150.0;
  final double tSize = 15.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/environment/welcome.jpg',
            fit: BoxFit.fill,
          ),
        ),
       
            // Positioned(
            //    top: MediaQuery.of(context).size.height / 3,
            //   left: MediaQuery.of(context).size.width / 2.8,
            //   child: Column(
            //     children:[
            //       Text(
            //     'Welcome',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 40,
            //         fontWeight: FontWeight.bold),
            //   ),
            //  Text(
            //     '\n \n Welcome to HappyToto \n\n game aimong to help your children \n\n protect themselves against child sexual abuse!!',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold),
            //   ),
            //     ]
                 
            //   )
             
            // )
        
        
      ]),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.red,
        child: Row(
                    
          children: <Widget>[
Spacer(),
          Container(
            
            width: kWeight,
            height: kHeight,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.yellow)),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
              color: Colors.red,
              child: Text(
                "NEXT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: tSize,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          
        ]),
      ),
    );
  }
}
