import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoyClothes extends StatefulWidget {
  @override
  _BoyClothesState createState() => _BoyClothesState();
}

class _BoyClothesState extends State<BoyClothes> {
  
  final double _shirtSize = 70;

  bool shirt1Accepted = false;
  bool shirt2Accepted = false;
  bool short2Accepted = false;
  bool short1Accepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/characters/boyclothed.svg',
              fit: BoxFit.fill,
            ),
          ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.8,
              left: MediaQuery.of(context).size.width / 3.8,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'TROUSER',
                onAccept: (value) {
                onPlayAudioShort();
                  setState(() {
                    short1Accepted = true;
                    short2Accepted =false;

                    
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return short1Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/trouser.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 140,
                          width: 90,
                          //color: Colors.red
                          )
                      : Container(
                          height: 90,
                          width: 90,
                          //color: Colors.pink,
                        );
                },
              )),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.8,
              left: MediaQuery.of(context).size.width / 3.9,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHORT',
                onAccept: (value) {
                onPlayAudioShort();
                  setState(() {
                    short2Accepted = true;
                    short1Accepted =false;
                    
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return short2Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/short1.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 90,
                          width: 90,
                          //color: Colors.red
                          )
                      : Container(
                          height: 90,
                          width: 90,
                          //color: Colors.pink,
                        );
                },
              )),
         
          
           Positioned(
              top: MediaQuery.of(context).size.height / 2.9,
              left: MediaQuery.of(context).size.width / 4.8,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHIRT1',
                onAccept: (value) {
                   onPlayAudioShirt1();
                  setState(() {
                    shirt1Accepted = true;
                    shirt2Accepted =false;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return shirt1Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/shirt1.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 100,
                          width: 150,
                        )
                      : Container(height: 100, width: 127);
                },
              )),
        Positioned(
              top: MediaQuery.of(context).size.height / 2.85,
              left: MediaQuery.of(context).size.width / 4.15,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHIRT2',
                onAccept: (value) {
                onPlayAudioShirt2();
                  setState(() {
                    shirt2Accepted = true;
                    shirt1Accepted = false;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return shirt2Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/shirt2.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 100,
                          width: 118,
                          //color: Colors.pink,
                        )
                      : Container(height: 90, width: 118, 
                      //color: Colors.black
                      );
                },
              )),
          
          Positioned(
            top: 10,
              right: 10,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "SHIRT1",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/shirt1.svg',
                          height: _shirtSize,
                          fit: BoxFit.cover,
                        ),
                        childWhenDragging: Container(
                          color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            color: Colors.white,
                            height: _shirtSize,
                            width: _shirtSize,
                          ),
                        ),
                        child: shirt1Accepted
                            ? Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                width: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/characters/shirt1.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "SHIRT2",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/shirt2.svg',
                          height: _shirtSize,
                          fit: BoxFit.cover,
                        ),
                        childWhenDragging: Container(
                          color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            color: Colors.white,
                            height: _shirtSize,
                            width: _shirtSize,
                          ),
                        ),
                        child: shirt2Accepted
                            ? Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                width: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/characters/shirt2.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                  ),
                  
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "SHORT",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/short1.svg',
                          height: _shirtSize,
                          fit: BoxFit.fill,
                        ),
                        childWhenDragging: Container(
                          color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            color: Colors.white,
                            height: _shirtSize,
                            width: _shirtSize,
                          ),
                        ),
                        child: short2Accepted
                            ? Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                width: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/characters/short1.svg',
                                    fit: BoxFit.cover,
                                    height: _shirtSize,
                                  ),
                                ),
                              )),
                  ),
                      
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "TROUSER",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/trouser.svg',
                          height: _shirtSize,
                          fit: BoxFit.cover,
                        ),
                        childWhenDragging: Container(
                          color: Colors.brown,
                          height: _shirtSize,
                          child: Container(
                            color: Colors.white,
                            height: _shirtSize,
                            width: _shirtSize,
                          ),
                        ),
                        child: short1Accepted
                            ? Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  height: _shirtSize,
                                  width: _shirtSize,
                                ),
                              )
                            : Container(
                                color: Colors.brown,
                                height: _shirtSize,
                                width: _shirtSize,
                                child: Container(
                                  color: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/images/characters/trouser.svg',
                                    fit: BoxFit.cover,
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

  void onPlayAudioShirt1() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/verygood.mp3"),
    );
  }
   void onPlayAudioShirt2() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/verygood.mp3"),
    );
  }
  void onPlayAudioShort() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/verygood.mp3"),
    );
  }
}
