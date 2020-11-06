import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class WelcomePage extends StatelessWidget {
  final double kHeight = 50.0;
  final double kWeight = 150.0;
  final double tSize = 15.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.grey,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Before letting your child explore the games, take a few minutes to decide on important parental safety controls',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ]),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.red,
        child: Row(children: <Widget>[
          Container(
            width: kWeight,
            height: kHeight,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.red)),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
              color: Colors.red,
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: tSize,
                ),
              ),
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, consentPage);
            },
          )
        ]),
      ),
    );
  }
}
