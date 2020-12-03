import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';

class Boy extends StatefulWidget {
  @override
  _BoyState createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  //AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

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
                    onPlayAudio1();
                  },
                  child: Container(
                    height: 17,
                    width: 30,
                    //color: Colors.black,
                  ))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.3,
              left: MediaQuery.of(context).size.width / 2.4,
              child: InkWell(
                  onTap: () {
                    onPlayAudio();
                  },
                  child: Container(height: 50, width: 90,
                   //color: Colors.red
                   ))),
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
                Navigator.pushNamed(context, bodyPartsC);
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
      Audio("assets/audio/story/nonono.mp3"),
    );
  }
    void onPlayAudio1() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/noprivatepart.mp3"),
    );
  }
}
