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
              top: MediaQuery.of(context).size.height / 3,
              left: MediaQuery.of(context).size.width / 2.21,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(
                    height: 17,
                    width: 27,
                    color: Colors.black,
                  ))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.3,
              left: MediaQuery.of(context).size.width / 2.4,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 50, width: 75, color: Colors.red))),
        ],
      ),
    );
  }

  playLocal() async {
    await audioPlayer.play('assets/audio/crdb_bank.wav', isLocal: true);
    //return(result);
  }
}
