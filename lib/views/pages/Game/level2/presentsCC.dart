import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PresentsCC extends StatefulWidget {
  @override
  _PresentsCCState createState() => _PresentsCCState();
}

class _PresentsCCState extends State<PresentsCC> {
  final double _shirtSize = 100;

  bool shadowstrangerAccepted = false;
  bool strangerAccepted = false;
  bool road1Accepted = false;
  bool treeAccepted = false;
  @override
  Widget build(BuildContext context) {
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
                onWillAccept: (value) => value == 'STRANGER',
                onAccept: (value) {
                  setState(() {
                    strangerAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return strangerAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/dragthings/stranger.svg',
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
                            'assets/images/dragthings/shadowstranger.svg',
                            fit: BoxFit.fill,
                          ),
                        );
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 11.5,
              left: MediaQuery.of(context).size.width / 4.6,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'TREE',
                onAccept: (value) {
                  setState(() {
                    treeAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return treeAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/dragthings/tree.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 150,
                          width: 170,
                          //color: Colors.black,
                        )
                      : Container(
                          height: 150,
                          width: 170,
                          child: SvgPicture.asset(
                            'assets/images/dragthings/shadowtree.svg',
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
                        data: "STRANGER",
                        feedback: SvgPicture.asset(
                          'assets/images/dragthings/stranger.svg',
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
                        child: strangerAccepted
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
                                    'assets/images/dragthings/stranger.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.fill,
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
                        data: "TREE",
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
                          ),
                        ),
                        child: treeAccepted
                            ? Container(
                                //color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  //color: Colors.white,
                                  height: _shirtSize,
                                ),
                              )
                            : Container(
                                //color: Colors.brown,
                                height: _shirtSize,

                                child: Container(
                                  //color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/dragthings/tree.svg',
                                    fit: BoxFit.fill,
                                    height: _shirtSize,
                                  ),
                                ),
                              )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
