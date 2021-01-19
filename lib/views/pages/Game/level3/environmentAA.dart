import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentAA extends StatefulWidget {
  @override
  _EnvironmentAAState createState() => _EnvironmentAAState();
}

class _EnvironmentAAState extends State<EnvironmentAA> {
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
            child: Image.asset('assets/images/environment/envthree2.png',
                fit: BoxFit.fill),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 1.2,
            child: InkWell(
              child: SvgPicture.asset(
                'assets/images/characters/boydressed.svg',
                width: 40,
                height: 60,
                fit: BoxFit.fill,
              ),
              onTap: () {
                onPlayAudio2();
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 100,
            color: Colors.white,
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/characters/boydressed.svg',
                width: 70,
                height: 150,
                fit: BoxFit.fill,
              ),
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
                Navigator.pushNamed(context, environmentB);
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
      Audio("assets/audio/story/findibra.mp3"),
    );
  }

  void onPlayAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/roadwithpeople.mp3"),
    );
  }
}
