import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/provider/level_provider.dart';
import 'package:provider/provider.dart';

class PresentsCCC extends StatefulWidget {
  @override
  _PresentsCCCState createState() => _PresentsCCCState();
}

class _PresentsCCCState extends State<PresentsCCC> {
  final double _shirtSize = 100;

  bool shadowstrangerAccepted = false;
  bool tree1Accepted = false;
  bool road1Accepted = false;
  bool carAccepted = false;
  @override
  Widget build(BuildContext context) {
    final _levelProvider = Provider.of<LevelProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/dragthings/env2c.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              left: MediaQuery.of(context).size.width / 8,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'ROAD1',
                onAccept: (value) {
                  setState(() {
                    road1Accepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return road1Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/dragthings/road1.svg',
                            fit: BoxFit.cover,
                          ),
                          height: 100,
                          width: 550,
                          //color: Colors.blue,
                        )
                      : Container(
                          height: 100,
                          width: 550,
                          child: SvgPicture.asset(
                            'assets/images/dragthings/shadowroad1.svg',
                            fit: BoxFit.cover,
                          ),
                        );
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 11,
              left: MediaQuery.of(context).size.width / 1.82,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'TREE2',
                onAccept: (value) {
                  setState(() {
                    shadowstrangerAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return shadowstrangerAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/dragthings/tree.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 150,
                          width: 135,
                          //color: Colors.blue,
                        )
                      : Container(
                          height: 150,
                          width: 120,
                          child: SvgPicture.asset(
                            'assets/images/dragthings/shadowtree.svg',
                            fit: BoxFit.fill,
                          ),
                        );
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 6,
              left: MediaQuery.of(context).size.width / 4.6,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'CAR',
                onAccept: (value) {
                  setState(() {
                    carAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return carAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/dragthings/icecreamkart.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 150,
                          width: 140,
                          //color: Colors.black,
                        )
                      : Container(
                          height: 150,
                          width: 140,
                          child: SvgPicture.asset(
                            'assets/images/dragthings/shadowicecreamkart.svg',
                            fit: BoxFit.fill,
                          ),
                        );
                },
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 13,
              left: MediaQuery.of(context).size.width / 9,
              child: Row(
                children: [
                  Container(
                    //color: Colors.blue,
                    child: Draggable<String>(
                        data: "TREE2",
                        feedback: SvgPicture.asset(
                          'assets/images/dragthings/tree.svg',
                          height: _shirtSize,
                          fit: BoxFit.fill,
                        ),
                        childWhenDragging: Container(
                          //color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            //color: Colors.white,
                            height: _shirtSize,
                            width: _shirtSize,
                          ),
                        ),
                        child: shadowstrangerAccepted
                            ? Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  //color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                width: _shirtSize,
                                child: Container(
                                  //color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/dragthings/tree.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                  ),
                  Container(
                    //color: Colors.blue,
                    child: Draggable<String>(
                        data: "ROAD1",
                        feedback: SvgPicture.asset(
                          'assets/images/dragthings/road1.svg',
                          height: _shirtSize,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                        childWhenDragging: Container(
                          //color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            //color: Colors.white,
                            height: _shirtSize,
                            width: 300,
                          ),
                        ),
                        child: road1Accepted
                            ? Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  //color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                width: 300,
                                child: Container(
                                  //color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/dragthings/road1.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                  ),
                  Container(
                    //color: Colors.blue,
                    child: Draggable<String>(
                        data: "CAR",
                        feedback: SvgPicture.asset(
                          'assets/images/dragthings/icecreamkart.svg',
                          height: _shirtSize,
                          width: 140,
                          fit: BoxFit.fill,
                        ),
                        childWhenDragging: Container(
                          //color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            //color: Colors.white,
                            height: _shirtSize,
                            width: 140,
                          ),
                        ),
                        child: carAccepted
                            ? Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  //color: Colors.white,
                                  height: _shirtSize,
                                  width: 140,
                                ),
                              )
                            : Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                width: 140,
                                child: Container(
                                  //color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/dragthings/icecreamkart.svg',
                                    fit: BoxFit.fill,
                                    height: _shirtSize,
                                  ),
                                ),
                              )),
                  ),
                ],
              )),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.home, color: Colors.blue, size: 70),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.1,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
                size: 70,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 14,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.red,
                size: 60,
              ),
              onPressed: () {
                _levelProvider.toogleLevel = 3;
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
        ],
      ),
    );
  }
}
