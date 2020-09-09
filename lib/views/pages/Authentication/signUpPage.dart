import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ])),
              ),
            ),
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 60),
                      Text(
                        "Happy Kids",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your phone number or email";
                          } else
                            return null;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Phone or email",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.deepOrangeAccent,
                            )),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your password";
                          } else
                            return null;
                        },
                        style: TextStyle(color: Colors.deepOrangeAccent),
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.deepOrangeAccent,
                            )),
                        obscureText: true,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please re-enter your password";
                          } else
                            return null;
                        },
                        style: TextStyle(color: Colors.deepOrangeAccent),
                        decoration: InputDecoration(
                            hintText: "Re-enter Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.deepOrangeAccent,
                            )),
                        obscureText: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                              onPressed: null, child: Text("Forgot Password?")),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 50),
                          Container(
                            height: 45,
                            width: 200,
                            child: Expanded(
                              child: RaisedButton(
                                hoverColor: Colors.white,
                                color: Colors.deepOrangeAccent,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    Navigator.pushNamed(context, homePage);
                                  } else {
                                    print("I am in deep trouble");
                                  }
                                },
                                child: Text("Register"),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(width: 50),
                        ],
                      ),
                      SizedBox(height: 20),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Have an Account?",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Log in!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(3 * size.width / 10, 0.0);

    path.cubicTo(size.width / 2, size.height / 2, 6 * size.width / 10,
        0.01 * size.height / 4, size.width, size.height); // cubic curve
    path.lineTo(size.width, 0); // vertical line

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height * 0.85);

    path.cubicTo(size.width / 3, size.height, 2 * size.width / 3,
        size.height * 0.7, size.width, size.height * 0.85); //cubic curve
    path.lineTo(size.width, 0); //vertical line

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
