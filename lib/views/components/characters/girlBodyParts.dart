import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Girl extends StatefulWidget {
  @override
  _GirlState createState() => _GirlState();
}

class _GirlState extends State<Girl> {
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
              'assets/images/characters/girlnaked.svg',
            
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top:MediaQuery.of(context).size.height / 2.89,
              left: MediaQuery.of(context).size.width / 2.07,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(
                    height: 17,
                    width: 27,
                    color: Colors.black,
                  ))),
                   Positioned(
           top: MediaQuery.of(context).size.height / 2.3,
              left: MediaQuery.of(context).size.width / 2.2,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 40, width: 70, color: Colors.blue))),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.5,
              left: MediaQuery.of(context).size.width / 2.22,
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
