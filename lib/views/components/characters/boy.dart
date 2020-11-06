import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boy extends StatefulWidget {
  @override
  _BoyState createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/characters/boynaked.svg',
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
              bottom: 120,
              left: MediaQuery.of(context).size.width / 2.45,
              child: DragTarget<Color>(
                onWillAccept: (value) => value != Colors.black,
                onAccept: (value) {
                  //update app state with value
                },
                onLeave: (value) {
                  //Alert the user their value ddint land
                },
                builder: (context, candidates, rejects) {
                  return candidates.length > 0
                      ? Container(color: Colors.black, height: 60, width: 120)
                      : Container(color: Colors.grey, height: 60, width: 120);
                },
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Draggable<Color>(
                  data: Color(0x000000ff),
                  feedback:
                      Container(color: Colors.yellow, height: 60, width: 120),
                  childWhenDragging:
                      Container(color: Colors.black, height: 60, width: 120),
                  child:
                      Container(color: Colors.black, height: 60, width: 120))),
        ],
      ),
    );
  }

  playLocal() async {
    await audioPlayer.play('assets/audio/crdb_bank.wav', isLocal: true);
    //return(result);
  }
}
