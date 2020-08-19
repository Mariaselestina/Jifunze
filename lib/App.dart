
import 'package:flutter/material.dart';
import 'package:jifunze/views/pages/homePage.dart';



class App extends StatelessWidget {
  // This widg et is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jifunze',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
