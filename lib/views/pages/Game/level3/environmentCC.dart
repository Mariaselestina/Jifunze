import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentCC extends StatefulWidget {
  @override
  _EnvironmentCCState createState() => _EnvironmentCCState();
}

class _EnvironmentCCState extends State<EnvironmentCC> {
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    playAudio();
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
            child: Image.asset('assets/images/environment/envthree3.png',
                fit: BoxFit.fill),
          ),
             Positioned(
              bottom: MediaQuery.of(context).size.width /80,
              left: MediaQuery.of(context).size.width / 80,
              child: InkWell(
                child: Container(
                  //color: Colors.blue,
                  height: 500,
                  width: 500,
                ),
                onTap: () {
                  playAudio2();
                },
              )),
              Positioned(
              bottom: MediaQuery.of(context).size.width /80,
              right: MediaQuery.of(context).size.width / 80,
              child: InkWell(
                child: Container(
                  //color: Colors.blue,
                  height: 400,
                  width: 200,
                ),
                onTap: () {
                  playAudio1();
                },
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width / 3.6,
              left: MediaQuery.of(context).size.width / 3.5,
              child: InkWell(
                child: Container(
                  //color: Colors.blue,
                  height: 90,
                  width: 90,
                ),
                onTap: () {
                  playAudio1();
                },
              )),
              Positioned(
              bottom: MediaQuery.of(context).size.width / 3.2,
              right: MediaQuery.of(context).size.width / 1.15,
              child: InkWell(
                child: Container(
                  //color: Colors.blue,
                  height: 90,
                  width: 90,
                ),
                onTap: () {
                  playAudio1();
                },
              )),
              Positioned(
              top: MediaQuery.of(context).size.width /2.6,
              left: MediaQuery.of(context).size.width / 2.9,
              child: InkWell(
                child: Container(
                  //color: Colors.blue,
                  height: 140,
                  width: 140,
                ),
                onTap: () {
                  playAudio1();
                },
              )),
              
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
                Navigator.pushNamed(context, environmentCCC);
                _assetsAudioPlayer.stop();
              },
            ),
          ),
        ],
      ),
    );
  }

  void playAudio() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/safeplaces.mp3"),
    );
  }

  void playAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/verygood.mp3"),
    );
  }
  void playAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/nonono.mp3"),
    );
  }
}
