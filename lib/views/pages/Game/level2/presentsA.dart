import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';


class PresentsA extends StatefulWidget {
  @override
  _PresentsAState createState() => _PresentsAState();
}

class _PresentsAState extends State<PresentsA> {
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
            child: Image.asset(
              'assets/images/environment/envtwointroduction.png',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              iconSize: 90,
              icon: Icon(Icons.home, color: Colors.blue, size: 70),
              onPressed: () {
                Navigator.pushNamed(context, levelsPage);
                 _assetsAudioPlayer.stop();
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
                _assetsAudioPlayer.stop();
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
                Navigator.pushNamed(context, presentsC);
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
      Audio("assets/audio/story/ellydukani.mp3"),
    );
  }
}
