import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';


class GirlClothes extends StatefulWidget {
  @override
  _GirlClothesState createState() => _GirlClothesState();
}

class _GirlClothesState extends State<GirlClothes> {
  final double _shirtSize = 100;

  bool blouse1Accepted = false;
  bool blouse2Accepted = false;
  bool skirt1Accepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/characters/girlclothed.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.9,
              left: MediaQuery.of(context).size.width / 4.1,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'BLOUSE1',
                onAccept: (value) {
                  onPlayAudio();
                  setState(() {
                    blouse1Accepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return blouse1Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/blouse1.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 100,
                          width: 120,
                        )
                      : Container(height: 90, width: 100);
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.9,
              left: MediaQuery.of(context).size.width / 4.1,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'BLOUSE2',
                onAccept: (value) {
                  onPlayAudio();
                  setState(() {
                    blouse2Accepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return blouse2Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/blouse2.svg',
                            fit: BoxFit.fill,
                          ),
                          height: 100,
                          width: 120,
                        )
                      : Container(height: 90, width: 90);
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.8,
              left: MediaQuery.of(context).size.width / 4.5,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SKIRT1',
                onAccept: (value) {
                  onPlayAudio();
                  setState(() {
                    skirt1Accepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return skirt1Accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/skirt1.svg',
                            fit: BoxFit.cover,
                          ),
                          height: 80,
                          width: 170,
                        )
                      : Container(
                          height: 80,
                          width: 150,
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
                        data: "BLOUSE1",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/blouse1.svg',
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
                        child: blouse1Accepted
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
                                    'assets/images/characters/blouse1.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "BLOUSE2",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/blouse2.svg',
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
                        child: blouse2Accepted
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
                                    'assets/images/characters/blouse2.svg',
                                    height: _shirtSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Draggable<String>(
                        data: "SKIRT1",
                        feedback: SvgPicture.asset(
                          'assets/images/characters/skirt1.svg',
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
                        child: skirt1Accepted
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
                                    'assets/images/characters/skirt1.svg',
                                    fit: BoxFit.cover,
                                    height: _shirtSize,
                                  ),
                                ),
                              )),
                  ),
                ],
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 13,
            right: MediaQuery.of(context).size.width / 9,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, boyClothes);
              },
            ),
          ),
        ],
      ),
    );
  }

  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/applauses/no.mp3"),
    );
  }
}
