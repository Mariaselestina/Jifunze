import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/views/pages/Authentication/authenticationPage.dart';
import 'package:jifunze/views/pages/Authentication/signUpPage.dart';
import 'package:jifunze/views/pages/Authentication/signinPage.dart';
import 'package:jifunze/views/pages/homePage.dart';
import 'package:jifunze/views/pages/startup/consentPage.dart';
import 'package:jifunze/views/pages/startup/kid.dart';
import 'package:jifunze/views/pages/startup/startup.dart';
import 'package:jifunze/views/pages/startup/welcome.dart';

class App extends StatelessWidget {
  // This widg et is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Jifunze',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartupPage(),
      routes: {
        signUpPage: (_) => SignUpPage(),
        signInPage: (_) => SignInPage(),
        homePage: (_) => HomePage(),
        authenticationPage: (_) => AuthenticationPage(),
        kidPage: (_) => KidPage(),
        welcomePage: (_) => WelcomePage(),
        consentPage: (_) => ConsentPage(),
        startupPage: (_) => StartupPage(),
      },
    );
  }
}
