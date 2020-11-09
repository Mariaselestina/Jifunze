
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boy extends StatefulWidget {
  @override
  _BoyState createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  AudioPlayer audioPlayer = AudioPlayer();

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
              left: MediaQuery.of(context).size.width / 2.4,
              child: InkWell(
                  onTap: () {
                     playLocal();
                    print('no no no');
                  },
                  child: Container(height: 43, width: 80))),
        ],
      ),
    );
  }

   playLocal() async {
      audioPlayer.play('assets/audio/applauses/no.mp3', isLocal: true);
    //return(result);
  }
}
