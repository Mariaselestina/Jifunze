
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:jifunze/constants/routes.dart';

class Girl2 extends StatefulWidget {
  @override
  _Girl2State createState() => _Girl2State();
}

class _Girl2State extends State<Girl2> {
  //AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

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
              left: MediaQuery.of(context).size.width / 2.05,
              child: InkWell(
                  onTap: () {
                   // playLocal();
                onPlayAudio1();
                  },
                  child: CircleAvatar(radius: 12),
                  // child: Container(
                  //   height: 17,
                  //   width: 30,
                  //   color: Colors.pink,
                  // )
                  )
                  ),
                 Positioned(
           top: MediaQuery.of(context).size.height / 2.4,
              left: MediaQuery.of(context).size.width / 2.18,
              child: InkWell(
                  onTap: () {
                  onPlayAudio1();
                   
                  },
                   child: CircleAvatar(radius: 31),
                  // child: Container(height: 40, width: 70,
                  // color: Colors.pink
                  //  )
                   )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 4,
              left: MediaQuery.of(context).size.width / 2.22,
              child: InkWell(
                  onTap: () {
                    onPlayAudio();
                   
                  },
                   child: CircleAvatar(radius: 37),
                  // child: Container(height: 50, width: 80,
                  //  color: Colors.pink
                  //  )
                   )),
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
                Navigator.pushNamed(context, boy2);
              },
            ),
          ),
         
          ],
      ),
    );
  }

  
   void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/noprivatepart.mp3"),
    );
  }
   void onPlayAudio1() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/nonono.mp3"),
    );
  }
}
