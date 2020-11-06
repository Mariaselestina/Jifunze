import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(height: 20),
                      Text(
                        "Happy Kids!", //smile,cheka,upendo
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                       
                        validator: validateMobile,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "phone or Email",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.deepOrangeAccent,
                            )),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 5),
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
                                    Navigator.pushNamed(context, levelsPage);
                                  } else {
                                    print("I am in deep trouble!");
                                  }
                                },
                                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20  ),),
                                
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          SizedBox(width: 50),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, signUpPage);
                              },
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "New here?",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Sign up!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
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

String validateMobile(String value) {
  if (value.isEmpty) {
    return "Please enter email or phone";
  }
  // Pattern pattern =r"^0.[0-9]{,10}";
  // RegExp regex =new RegExp(pattern);
  //   if (!regex.hasMatch(value)){
  //     return "Enter correct phone";
  //   }

  Pattern pattern1 = r"^([A-Za-z0-9.])+\@+([A-Za-z0-9.-_])+\.+([A-Za-z])$";
  RegExp regex1 = new RegExp(pattern1);
  if (!regex1.hasMatch(value)) {
    return 'Enter Valid Email';
  } else
    return null;
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 3, 0.0);

    path.cubicTo(1.5 * size.width / 3, size.height / 2, 2.5 * size.width / 3,
        0.5 * size.height / 3, size.width, size.height); // cubic curve
    path.lineTo(size.width, 0); // vertical line

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
