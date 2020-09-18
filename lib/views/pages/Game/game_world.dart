import 'package:flutter/material.dart';

class GameWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[],
          )),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
             
                  Chip(backgroundColor: Colors.blue, label: Text('stage 1',style: TextStyle(color:Colors.white),)),
                    Chip(backgroundColor: Colors.grey, label: Text('stage 2',style: TextStyle(color:Colors.black),)),
                    Chip(backgroundColor: Colors.grey, label: Text('stage 3',style: TextStyle(color:Colors.black),)),
                    Chip(backgroundColor: Colors.grey, label: Text('stage 4',style: TextStyle(color:Colors.black),))
                
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Please select the image that indicated an unsafe touch",
                      style: TextStyle(fontSize: 20),
                    )),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
