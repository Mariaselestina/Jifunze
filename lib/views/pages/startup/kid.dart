import 'package:flutter/material.dart';

class KidPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
     
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(height: 200, width: 200,
            color: Colors.grey,),
          ),
        Row(
          children: <Widget>[
            Expanded(
                          child: Text(
                'Get a parent to unlock the app',
                textAlign: TextAlign.center,
                style: TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
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
          )
        ]),
      ),
    );
  }
}
