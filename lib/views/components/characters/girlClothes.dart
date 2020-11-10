import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GirlClothes extends StatefulWidget {
  @override
  _GirlClothesState createState() => _GirlClothesState();
}

class _GirlClothesState extends State<GirlClothes> {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/characters/girlclothed.svg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top:MediaQuery.of(context).size.height / 3.3,
              left: MediaQuery.of(context).size.width / 3.3,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(
                    height: 15,
                    width: 25,
                    color: Colors.black,
                  ))),
                   Positioned(
           bottom: MediaQuery.of(context).size.width / 3,
              left: MediaQuery.of(context).size.width / 3.7,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 40, width: 70, color: Colors.blue))),
          Positioned(
              bottom: MediaQuery.of(context).size.width / 4.7,
              left: MediaQuery.of(context).size.width / 3.7,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 50, width: 75, color: Colors.red))),
         
        ],
      ),
    );
  }

  playLocal() async {
    int result = 0;
    setState(() {
      _isPlaying = !_isPlaying;
    });
    if (!_isPlaying) {
      print('posss');
      audioPlayer.play('assets/audio/crdb_bank.wav', isLocal: true);
    }
    if (_isPlaying) {
      audioPlayer.stop();
    }

    print('---------------------------------------');
    print(result);
    print('++++++++++++++++++++++++++++++++++++++');
  }
}
