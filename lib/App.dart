import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

import 'package:jifunze/views/components/characters/boyClothes.dart';

import 'package:jifunze/views/pages/Authentication/authenticationPage.dart';
import 'package:jifunze/views/pages/Authentication/signUpPage.dart';
import 'package:jifunze/views/pages/Authentication/signinPage.dart';
import 'package:jifunze/views/pages/FamilyTree.dart';
import 'package:jifunze/views/pages/Game/flipPresentcard/present_home_page.dart';
import 'package:jifunze/views/pages/Game/level1/beginingPage.dart';
import 'package:jifunze/views/pages/Game/level1/bodyPartsD.dart';
import 'package:jifunze/views/pages/Game/level1/bodyPartsB.dart';
import 'package:jifunze/views/pages/Game/level1/bodyPartsC.dart';

import 'package:jifunze/views/pages/Game/level2/beginingPresents.dart';
import 'package:jifunze/views/pages/Game/level3/beginingenvironment.dart';
import 'package:jifunze/views/pages/Game/level3/environmentC.dart';

import 'package:jifunze/views/pages/Game/level3/environmentCC.dart';
import 'package:jifunze/views/pages/Game/level2/presentsB.dart';
import 'package:jifunze/views/pages/Game/level2/presentsC.dart';
import 'package:jifunze/views/pages/Game/level2/presentsCC.dart';
import 'package:jifunze/views/pages/Game/level2/presentsCCC.dart';
import 'package:jifunze/views/pages/Game/level3/environmentA.dart';
import 'package:jifunze/views/pages/Game/level3/environmentAA.dart';

import 'package:jifunze/views/pages/Game/level3/environmentB.dart';
import 'package:jifunze/views/pages/Game/level3/environmentBB.dart';
import 'package:jifunze/views/pages/Game/level3/environmentBBB.dart';

import 'package:jifunze/views/pages/Game/level3/environmentCCC.dart';

import 'package:jifunze/views/pages/Game/level2/presentsA.dart';

import 'package:jifunze/views/pages/homePage.dart';
import 'package:jifunze/views/pages/startup/consentPage.dart';

import 'package:jifunze/views/pages/startup/levelsPage.dart';

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
      home: WelcomePage(),
      routes: {
        signUpPage: (_) => SignUpPage(),
        signInPage: (_) => SignInPage(),
        homePage: (_) => HomePage(),
        authenticationPage: (_) => AuthenticationPage(),
        welcomePage: (_) => WelcomePage(),
        consentPage: (_) => ConsentPage(),
        startupPage: (_) => StartupPage(),
        familyTree: (_) => FamilyTree(),
        levelsPage: (_) => LevelsPage(),
        beginingPage: (_) => BeginingPage(),
        boyClothes: (_) => BoyClothes(),
        bodyPartsB: (_) => BodyPartsB(),
        bodyPartsC: (_) => BodyPartsC(),
        bodyPartsD: (_) => BodyPartsD(),
        beginingPresents: (_) => BeginingPresents(),
        presentsA: (_) => PresentsA(),
        presentHomePage: (_) => PresentHomePage(),
        presentsB: (_) => PresentsB(),
        presentsC: (_) => PresentsC(),
        presentsCC: (_) => PresentsCC(),
        presentsCCC: (_) => PresentsCCC(),
        beginingenvironment: (_) => Beginingenvironment(),
        environmentA: (_) => EnvironmentA(),
        environmentAA: (_) => EnvironmentAA(),
        environmentB: (_) => EnvironmentB(),
        environmentBB: (_) => EnvironmentBB(),
        environmentBBB: (_) => EnvironmentBBB(),
        environmentC: (_) => EnvironmentC(),
        environmentCC: (_) => EnvironmentCC(),
        environmentCCC: (_) => EnvironmentCCC(),
      },
    );
  }
}
