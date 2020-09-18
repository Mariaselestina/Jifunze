import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class StartupPage extends StatelessWidget {
  final double kHeight = 60.0;
  final double kWeight = 170.0;
  final double tSize = 18.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipper1(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.greenAccent),
                  //gradient: LinearGradient(
                      //colors: [Colors.white, Theme.of(context).primaryColor])),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Get a parent to unlock the app',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.blueGrey),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Container(
                    width: kWeight,
                    height: kHeight,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.pushNamed(context, kidPage);
                      },
                      color: Colors.green,
                      child: Text(
                        "I'AM A KID",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: tSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: kWeight,
                    height: kHeight,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.pushNamed(context, welcomePage);
                      },
                      color: Colors.green,
                      child: Text(
                        "I'AM A PARENT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: tSize,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, 2 * size.height / 3);

    path.cubicTo(size.width / 4, 2.3 * size.height / 3, 3 * size.width / 4,
        1.8 * size.height / 3, size.width, 2 * size.height / 3); // cubic curve
    path.lineTo(size.width, 0); // vertical line

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
