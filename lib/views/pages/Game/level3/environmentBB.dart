import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:flutter_svg/svg.dart';


class EnvironmentBB extends StatefulWidget {
  @override
  _EnvironmentBBState createState() => _EnvironmentBBState();
}

class _EnvironmentBBState extends State<EnvironmentBB> {
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
            child: Image.asset('assets/images/environment/interiorthreeB.png',
                fit: BoxFit.fill),
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
              height: 150,fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height /4.1,
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
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 1.12,
            child:Image.asset('assets/images/characters/stranger.png',
               
              width: 50,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
           Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 1.2,
      child:InkWell(
              child: SvgPicture.asset('assets/images/characters/boydressed.svg',
                 
                width: 50,
                height: 90,
                fit: BoxFit.fill,
              ),
              onTap: (){
                onPlayAudio2();
              },
      ),
          ),
           Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              iconSize: 90,
              icon: Icon(Icons.home, color: Colors.blue, size: 80),
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
                size: 70,
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
                Navigator.pushNamed(context, environmentBBB);
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
      Audio("assets/audio/story/tafutaibra.mp3"),
    );
  } 
  void onPlayAudio2() async {
   _assetsAudioPlayer.open(
      Audio("assets/audio/story/chumbachawageni.mp3"),
    );
  }
}
