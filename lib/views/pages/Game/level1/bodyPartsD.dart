import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:jifunze/constants/routes.dart';

class BodyPartsD extends StatefulWidget {
  @override
  _BodyPartsDState createState() => _BodyPartsDState();
}

class _BodyPartsDState extends State<BodyPartsD> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/environment/envtwoBhome.png',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(-0.31, 0.5),
            child: Container(
              width: 105,
              height: 130,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/gifimages/washinghands.gif',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.25, 0.5),
            child: InkWell(
                child: Container(
                  width: 50,
                  height: 50,
                  //color: Colors.blue,
                  child: Image.asset(
                    'assets/images/gifimages/hand.gif',
                    fit: BoxFit.fill,
                  ),
                ),
                onTap: () {
                  onPlayAudio3();
                }),
          ),
          Align(
            alignment: Alignment(0.52, 0.5),
            child: InkWell(
              child: Container(
                width: 50,
                height: 50,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () {
                onPlayAudio2();
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
                
                //Navigator.pushNamed(context, levelsPage);
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Congratulations!",),
                      ],
                    ),
                    backgroundColor: Colors.white,
                    content: Container(
                      width: 40,
                      height: 85,
                      //color: Colors.blue,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/star.png',
                            //height: 50,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),

                  barrierColor: Colors.transparent,

                  //barrierDismissible: true,
                );
                assetsAudioPlayer.stop();
                onPlayAudio4();
              },
            ),
          ),
        ],
      ),
    );
  }

  void onPlayAudio2() async {
    assetsAudioPlayer.open(
      Audio("assets/audio/story/ibrahome.mp3"),
    );
  }

  void onPlayAudio3() async {
   assetsAudioPlayer.open(
      Audio("assets/audio/story/ellyatschool.mp3"),
    );
  }

  void onPlayAudio4() async {
    assetsAudioPlayer.open(
      Audio("assets/audio/story/firstlevel.mp3"),
    );
  }
}
