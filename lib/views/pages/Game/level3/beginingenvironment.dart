import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class Beginingenvironment extends StatefulWidget {
  @override
  _BeginingenvironmentState createState() => _BeginingenvironmentState();
}

class _BeginingenvironmentState extends State<Beginingenvironment> {
 AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

 @override
  void initState() {
   onPlayAudio1();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/pangala.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.home, color: Colors.blue, size: 70),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.1,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
                size: 60,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
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
                Navigator.pushNamed(context, environmentA);
                 _assetsAudioPlayer.stop();
              },
            ),
          ),
        ],
      ),
    );
  }
   void onPlayAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/standingatchurch.mp3"),
    );
  }
}
