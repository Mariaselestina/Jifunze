import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jifunze/constants/routes.dart';

class BodyPartsB extends StatefulWidget {
  @override
  _BodyPartsBState createState() => _BodyPartsBState();
}

class _BodyPartsBState extends State<BodyPartsB> {
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    onPlayAudio0();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/characters/boygirlshort.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 8.5,
              left: MediaQuery.of(context).size.width / 1.84,
              child: InkWell(
                  onTap: () {
                    onPlayAudio2();
                  },
                  child: Container(
                    height: 400,
                    width: 140,
                     //color: Colors.green,
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height / 8.5,
              left: MediaQuery.of(context).size.width / 4.4,
              child: InkWell(
                  onTap: () {
                    onPlayAudio2();
                  },
                  child: Container(
                    height: 400,
                    width: 140,
                    //color: Colors.green,
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.4,
              left: MediaQuery.of(context).size.width / 1.65,
              child: InkWell(
                  onTap: () {
                    // playLocal();
                    onPlayAudio();
                  },
                  child: Container(
                    height: 25,
                    width: 35,
                    //color: Colors.black,
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.6,
              left: MediaQuery.of(context).size.width / 3.35,
              child: InkWell(
                  onTap: () {
                    onPlayAudio1();
                  },
                  child: Container(
                    height: 30,
                    width: 45,
                    //color: Colors.black,
                  ))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.9,
              left: MediaQuery.of(context).size.width / 3.9,
              child: InkWell(
                  onTap: () {
                    onPlayAudio();
                  },
                  child: Container(
                    height: 80, width: 100,
                    //color: Colors.red
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.8,
              left: MediaQuery.of(context).size.width / 1.76,
              child: InkWell(
                  onTap: () {
                    onPlayAudio1();
                  },
                  child: Container(
                    height: 70, width: 80,
                    //color: Colors.blue
                  ))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.5,
              left: MediaQuery.of(context).size.width / 1.74,
              child: InkWell(
                  onTap: () {
                    onPlayAudio1();
                  },
                  child: Container(
                    height: 80, width: 80,
                    //color: Colors.red
                  ))),
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
          top: MediaQuery.of(context).size.height / 1.26,
          right: MediaQuery.of(context).size.width / 1.2,
          child: IconButton(
            iconSize: 70,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
              size: 60,
            ),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
              _assetsAudioPlayer.stop();
              
              
            },
          ),
        ),
         
        Positioned(
          top: MediaQuery.of(context).size.height / 1.26,
          right: MediaQuery.of(context).size.width / 14,
          child: IconButton(
             iconSize: 70,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
              size: 60,
            ),
            onPressed: () {
              Navigator.pushNamed(context, bodyPartsC);
              _assetsAudioPlayer.stop(); 
                       
              
             
            },
          ),
        ),
        ],
      ),
    );
  }

  void onPlayAudio0() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/onyeshasehemusalama.mp3"),
    );
  }

  void onPlayAudio() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/hapansehemuzasiri.mp3"),
    );
  }

  void onPlayAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/hapansehemuzasiri.mp3"),
    );
  }

  void onPlayAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/vizurisana.mp3"),
    );
  }
}
