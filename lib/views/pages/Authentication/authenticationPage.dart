import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jifunze/constants/routes.dart';

class AuthenticationPage extends StatelessWidget {
  final double kRadius = 60.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Sign in with a parent\'s account',
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
                    'Sign in with your own account to set up a profile and get more parental controls.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Spacer(),
                Container(
                  height: kRadius,
                  width: kRadius,
                  child: FlatButton(
                    shape: CircleBorder(),
                    color: Colors.white,
                    onPressed: () {},
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                   SizedBox(width:20),
                Container(
                  height: kRadius,
                  width: kRadius,
                  child: FlatButton(
                    shape: CircleBorder(),
                    color: Colors.white,
                    onPressed: () {},
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(width:20),
                Container(
                  height: kRadius,
                  width: kRadius,
                  child: FlatButton(
                    
                    shape: CircleBorder(),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, signInPage);
                    },
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ]),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.blue,
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
        ]),
      ),
    );
  }
}
