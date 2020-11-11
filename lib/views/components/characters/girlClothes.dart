import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GirlClothes extends StatefulWidget {
  @override
  _GirlClothesState createState() => _GirlClothesState();
}

class _GirlClothesState extends State<GirlClothes> {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  bool _isPlaying = false;

  final double _shirtSize = 100;

  bool shirtaAccepted = false;
  bool shortaAccepted = false;
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
              left: MediaQuery.of(context).size.width / 3.9,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHIRT',
                onAccept: (value) {
                  setState(() {
                    shirtaAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return shirtaAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/shirt2.svg',
                            fit: BoxFit.cover,
                          ),
                          height: 100,
                          width: 95,
                          color: Colors.pink,
                        )
                      : Container(height: 90, width: 90, color: Colors.black);
                },
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.8,
              left: MediaQuery.of(context).size.width / 3.77,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHORT',
                onAccept: (value) {
                  setState(() {
                    shortaAccepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return shortaAccepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/short2.svg',
                            fit: BoxFit.cover,
                          ),
                          height: 80,
                          width: 75,
                          color: Colors.red)
                      : Container(
                          height: 80,
                          width: 75,
                          color: Colors.pink,
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
                        data: "SHIRT",
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
                        child: shirtaAccepted
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
                          'assets/images/characters/short.svg',
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
                        child: shortaAccepted
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
                                    'assets/images/characters/short.svg',
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

  playLocal() async {
    int result = 0;
    setState(() {
      _isPlaying = !_isPlaying;
    });
    if (!_isPlaying) {
      print('posss');
      audioPlayer.play('assets/audio/crdb_bank.wav', isLocal: true);
    }
    if (_isPlaying) {
      audioPlayer.stop();
    }

    print('---------------------------------------');
    print(result);
    print('++++++++++++++++++++++++++++++++++++++');
  }
}
