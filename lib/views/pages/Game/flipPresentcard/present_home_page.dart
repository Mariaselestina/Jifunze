import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/model/presents.dart';

import 'present_card_game.dart';

class PresentHomePage extends StatefulWidget {
  @override
  _PresentHomePageState createState() => _PresentHomePageState();
}

class _PresentHomePageState extends State<PresentHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(
        //title: Text('Welcome To Presents Game'),
        //),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                _list[index].goto,
                          ));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: _list[index].primarycolor,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black45,
                                        spreadRadius: 0.5,
                                        offset: Offset(3, 4))
                                  ]),
                            ),
                            Container(
                              height: 60,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: _list[index].secomdarycolor,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black12,
                                        spreadRadius: 0.3,
                                        offset: Offset(
                                          5,
                                          3,
                                        ))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text(
                                    _list[index].name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black26,
                                            blurRadius: 2,
                                            offset: Offset(1, 2),
                                          ),
                                          Shadow(
                                              color: Colors.green,
                                              blurRadius: 2,
                                              offset: Offset(0.5, 2))
                                        ]),
                                  )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children:
                                        genratestar(_list[index].noOfstar),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Spacer(),
              BottomAppBar(
                elevation: 0,
                color: Colors.transparent,
                child: Row(children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, presentsA);
                    },
                  ),
                ]),
              ),
              SizedBox(height:20)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> genratestar(int no) {
    List<Widget> _icons = [];
    for (int i = 0; i < no; i++) {
      _icons.insert(
          i,
          Icon(
            Icons.star,
            color: Colors.yellow,
          ));
    }
    return _icons;
  }
}

class Details {
  String name;
  Color primarycolor;
  Color secomdarycolor;
  Widget goto;
  int noOfstar;

  Details(
      {this.name,
      this.primarycolor,
      this.secomdarycolor,
      this.noOfstar,
      this.goto});
}

List<Details> _list = [
  Details(
      name: "EASY",
      primarycolor: Colors.green,
      secomdarycolor: Colors.green[300],
      noOfstar: 1,
      goto: PresentCardGame(Level.Easy)),
  Details(
      name: "MEDIUM",
      primarycolor: Colors.orange,
      secomdarycolor: Colors.orange[300],
      noOfstar: 2,
      goto: PresentCardGame(Level.Medium)),
  Details(
      name: "HARD",
      primarycolor: Colors.red,
      secomdarycolor: Colors.red[300],
      noOfstar: 3,
      goto: PresentCardGame(Level.Hard))
];
