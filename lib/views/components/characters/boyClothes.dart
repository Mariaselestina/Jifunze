import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoyClothes extends StatefulWidget {
  @override
  _BoyClothesState createState() => _BoyClothesState();
}

class _BoyClothesState extends State<BoyClothes> {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  final double _shirtSize = 100;
  bool accepted = false;
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
              bottom: 260,
              left: MediaQuery.of(context).size.width / 2.2,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 10, width: 24))),
          Positioned(
              bottom: 174,
              left: 172,
              child: DragTarget<String>(
                onWillAccept: (value) => value == 'SHIRT',
                onAccept: (value) {
                  setState(() {
                    accepted = true;
                  });
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return accepted
                      ? Container(
                          child: SvgPicture.asset(
                            'assets/images/characters/shirt1.svg',
                            fit: BoxFit.cover,
                          ),
                          height: 100,
                          width: 95)
                      : Container(height: 90, width: 90);
                },
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                color: Colors.blue,
                child: Draggable<String>(
                    data: "SHIRT",
                    feedback: SvgPicture.asset(
                      'assets/images/characters/shirt1.svg',
                      height: _shirtSize,
                    ),
                    childWhenDragging: Container(
                      color: Colors.brown,
                      height: _shirtSize,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          height: _shirtSize,
                          width: _shirtSize,
                        ),
                      ),
                    ),
                    child: accepted
                        ? Container(
                            color: Colors.brown,
                            height: _shirtSize,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                height: _shirtSize,
                                width: _shirtSize,
                              ),
                            ),
                          )
                        : Container(
                            color: Colors.brown,
                            height: _shirtSize,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: SvgPicture.asset(
                                  'assets/images/characters/shirt1.svg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
              )),
        ],
      ),
    );
  }

  playLocal() async {
    await audioPlayer.play('assets/audio/crdb_bank.wav', isLocal: true);
    //return(result);
  }
}
