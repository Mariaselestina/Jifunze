import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class FamilyTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Text(
              'Choose a profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Who\'s using the app right now?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(radius: 65),
                CircleAvatar(radius: 65),
              ],
            ),
          ]),
        ),
      ),
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
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ]),
      ),
    );
  }
}
