import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class ConsentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
               
                alignment: Alignment.center,
                height: 400,
                width: 700,
                child: Column(
                  
                  children: <Widget>[
                    SizedBox(height: 30),
                    
                    Text(
                      'Parental Consent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Important Privacy Information for Parents',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Hi Parents! In order for you to enable parental controls, we ask you to review the information below ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.orangeAccent,
        child: Row(children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, homePage);
            },
          ),
        ]),
      ),
    );
  }
}
