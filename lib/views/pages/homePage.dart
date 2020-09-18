import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Create a Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'We will try to customize the game for your child\'s age. Only you and your child can see this information.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Card(
                elevation: 10,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  height: 200,
                  width: MediaQuery.of(context).size.width*0.65 ,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      CircleAvatar(radius: 65),
                      SizedBox(width:30),
                      Expanded(
                                              child: Container(
                          height: 200,
                          width: 250,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20),
                              TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  hintText: "Kid\'s first name*",
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  hintText: "Age*",
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  hintText: "Birth month",
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("*Required")
                            ],
                          ),
                        ),
                      ),
                      
                   SizedBox(width: 35), ],
                  ),
                  
                ),
                
              )
            ]),
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
             Navigator.pushNamed(context, familyTree);
            },
          ),
        ]),
      ),
    );
  }
}
