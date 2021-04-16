import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';

class EnvironmentCCC extends StatefulWidget {
  @override
  _EnvironmentCCCState createState() => _EnvironmentCCCState();
}

class _EnvironmentCCCState extends State<EnvironmentCCC> {
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
onPlayAudio2();
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
            child: Image.asset('assets/images/environment/envthree4.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment(0.7, 0.3),
            
              child: Container(
                width: 70,
                height: 70,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              
          ),
          Align(
            alignment: Alignment(0.2, 0.3),
            
              child: Container(
                width: 70,
                height: 70,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              
          ),
          Align(
            alignment: Alignment(-0.25, 0.3),
            
              child: Container(
                width: 70,
                height: 70,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              
          ),
          Align(
            alignment: Alignment(-0.8, 0.3),
            
              child: Container(
                width: 70,
                height: 70,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              
          ),
          Align(
            alignment: Alignment(-0.95, -0.74),
            
              child: Container(
                width: 70,
                height: 70,
                //color: Colors.blue,
                child: Image.asset(
                  'assets/images/gifimages/hand.gif',
                  fit: BoxFit.fill,
                ),
              ),
              
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.29,
            child: InkWell(
              child: Container(
                height: 250, width: 100,
                //color:Colors.black
              ),
              onTap: () {
                onPlayAudio1();
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 1.9,
            child: InkWell(
              child: Container(
                height: 250, width: 100,
                // color:Colors.blue
              ),
              onTap: () {
                onPlayAudio3();
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 2.9,
            child: InkWell(
              child: Container(
                height: 250, width: 100,
                //color:Colors.blue
              ),
              onTap: () {
                onPlayAudio4();
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            right: MediaQuery.of(context).size.width / 8,
            child: InkWell(
              child: Container(
                height: 250, width: 100,
                // color:Colors.blue
              ),
              onTap: () {
                onPlayAudio5();
              },
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
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hongera Sana!"),
                      ],
                    ),
                    backgroundColor: Colors.white,
                    content: Container(
                      width: 100,
                      height: 85,
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/star.png',
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            'assets/icons/star.png',
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            'assets/icons/star.png',
                            fit: BoxFit.fill,
                          ),
       
                        ],
                        
                      ),
                      
                    ),
                  ),

                  barrierColor: Colors.transparent,

                  //barrierDismissible: true,
                );
                _assetsAudioPlayer.stop();
                //Navigator.pushNamed(context, levelsPage);
                playAudio();
              },
            ),
          ),
        ],
      ),
    );
  }

  void playAudio() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/mshindi.mp3"),
    );
  }
  void onPlayAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/wakufundishe.mp3"),
    );
  }

  void onPlayAudio1() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/mwambiemwalimu.mp3"),
    );
  }
    
    void onPlayAudio3() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/mwambiemzazi.mp3"),
    );
  }
   void onPlayAudio4() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/mwambiehapanakimbia.mp3"),
    );
  }
   void onPlayAudio5() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/itamsaada.mp3"),
    );
  }
}
