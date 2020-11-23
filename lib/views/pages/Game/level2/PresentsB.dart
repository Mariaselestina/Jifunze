import 'package:flutter/material.dart';



class PresentsB extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/envtwoBhome.png',
                fit: BoxFit.fill),
          ),
    
        ],
      ),
    );
  }
}

