import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boy2 extends StatefulWidget {
  @override
  _Boy2State createState() => _Boy2State();
}

class _Boy2State extends State<Boy2> {
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
              left: MediaQuery.of(context).size.width / 2.18,
              child: InkWell(
                  onTap: () {
                    onPlayAudio();
                  },
                  child: CircleAvatar(radius: 12),
                  // child: Container(
                  //   height: 17,
                  //   width: 30,
                  //   color: Colors.blue,
                  // )
                  )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.8,
              left: MediaQuery.of(context).size.width / 2.37,
              child: InkWell(
                  onTap: () {
                    onPlayAudio();
                  },
                  child: CircleAvatar(radius: 37),
                  // child: Container(height: 50, width: 80,
                  //  color: Colors.blue
                  //  )
                   )),
        ],
      ),
    );
  }

  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/applauses/hapana.mp3"),
    );
  }
}
