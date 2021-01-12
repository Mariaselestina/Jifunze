import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentA extends StatefulWidget {
  @override
  _EnvironmentAState createState() => _EnvironmentAState();
}

class _EnvironmentAState extends State<EnvironmentA> {
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
            child: Image.asset('assets/images/environment/envthree1.png',
                fit: BoxFit.fill),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 100,
            color: Colors.white,
            child: Align(
                alignment: Alignment.center,
            
              child: SvgPicture.asset(
                'assets/images/characters/girldressed.svg',
                
                width: 70,
              height: 150,fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 1.2,
            left: MediaQuery.of(context).size.width / 3,
            child: InkWell(
                          child: SvgPicture.asset(
                'assets/images/characters/girldressed.svg',
                width: 30,
                height: 70,
                fit: BoxFit.cover,
              ),
              onTap: () {
                 
                  },
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
                Navigator.pushNamed(context, environmentAA);
              },
            ),
          ),
        ],
      ),
    );
  }

    void onPlayAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/findelly.mp3"),
    );
  }
    void onPlayAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/nearbush.mp3"),
    );
  }
}
