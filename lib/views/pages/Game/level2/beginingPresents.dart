
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class BeginingPresents extends StatefulWidget {
  @override
  _BeginingPresentsState createState() => _BeginingPresentsState();
}

class _BeginingPresentsState extends State<BeginingPresents> {
  final double kHeight = 40.0;

  final double kWeight = 65.0;

  final double tSize = 11.0;
AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
@override
  void initState() {
     onPlayAudio1();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/storyline/birthday.PNG',
              fit: BoxFit.fill),
          // child: SvgPicture.asset(
          //   'assets/images/environment/introduction.svg',
          //   fit: BoxFit.fill,
          // ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/gifimages/confetti.gif',
            fit: BoxFit.cover,
          ),
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
              size: 70,
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
              Navigator.pushNamed(context, presentHomePage);
              _assetsAudioPlayer.stop();
            },
          ),
        ),
      ]),
    );
  }
   void onPlayAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/matchpresents.mp3"),
    );
  }
}
