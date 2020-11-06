import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Girl extends StatefulWidget {
  @override
  _GirlState createState() => _GirlState();
}

class _GirlState extends State<Girl> {
  AudioPlayer audioPlayer = AudioPlayer();
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
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              bottom: 254,
              left: MediaQuery.of(context).size.width / 2.1,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(
                    height: 12,
                    width: 25,
                    color: Colors.black,
                  ))),
          Positioned(
              bottom: 190,
              left: MediaQuery.of(context).size.width / 2.3,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 50, width: 75, color: Colors.red))),
          Positioned(
              bottom: 123,
              left: MediaQuery.of(context).size.width / 2.3,
              child: InkWell(
                  onTap: () {
                    playLocal();
                    print('no no no');
                  },
                  child: Container(height: 55, width: 80))),
        ],
      ),
    );
  }


  playLocal() async {
    int result =0;
    setState(() {
      _isPlaying = !_isPlaying;
    });
    if(!_isPlaying){
    
     audioPlayer.play('assets/audio/applauses', isLocal: true);
    }
    if(_isPlaying){
      audioPlayer.stop();
    }


    print('---------------------------------------');
    print(result);
    print('++++++++++++++++++++++++++++++++++++++');
  }
}
