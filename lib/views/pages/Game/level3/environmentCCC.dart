

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentCCC extends StatelessWidget {
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/environment/envthree4.png',
                fit: BoxFit.fill),
          ),
         Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.29,
                    child: InkWell(
                                          child: Container(
             height:250, width:100,
             //color:Colors.black
           ),
           onTap: (){
             onPlayAudio1();
           },
                    ),
         ),
            Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.9,
                    child: InkWell(
                                          child: Container(
             height:250, width:100,
             // color:Colors.blue
           ),
           onTap: (){},
                    ),
         ),
         Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 2.9,
                    child: InkWell(
                                          child: Container(
             height:250, width:100, 
             //color:Colors.blue
           ),
           onTap: (){},
                    ),
         ),
         Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 8,
                    child: InkWell(
                                          child: Container(
             height:250, width:100,
             // color:Colors.blue
           ),
           onTap: (){},
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
                Navigator.pushNamed(context, levelsPage);
              },
            ),
          ),
        ],
      ),
    );
  }
 void onPlayAudio1() async {
    AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/reporteacher.mp3"),
    );
  }

}
