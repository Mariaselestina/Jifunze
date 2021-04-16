import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/provider/level_provider.dart';
import 'package:jifunze/views/components/characters/boyClothes.dart';
import 'package:jifunze/views/components/characters/girlClothes.dart';
import 'package:provider/provider.dart';

class BodyPartsC extends StatefulWidget {
  @override
  _BodyPartsCState createState() => _BodyPartsCState();
}

class _BodyPartsCState extends State<BodyPartsC> {
  bool _isBoyClothes = false;
   AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
   
   @override
  void initState() {
      onPlayAudio0();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final _levelProvider = Provider.of<LevelProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          _isBoyClothes ? BoyClothes() : GirlClothes(),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 1.3,
            left: MediaQuery.of(context).size.width / 1.8,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                
                onTap: () {
                 
                  setState(() {
                    _isBoyClothes = false;
                  });
                },
                child: Container(
                  height: 85,
                  width: 115,
                  child: SvgPicture.asset(
                    'assets/images/characters/girl.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    
                    _isBoyClothes = true;
                     onPlayAudio1();
                  });
                },
                child: Container(
                  height: 78,
                  width: 100,
                  child: SvgPicture.asset(
                    'assets/images/characters/boy.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ]),
          ),
          Align(
            alignment: Alignment(0.65, -0.7),
            child: Container(
              width: 50,
              height: 50,
              //color: Colors.blue,
              child: Image.asset(
                'assets/images/gifimages/hand.gif',
                fit: BoxFit.fill,
              ),
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
                _levelProvider.toogleLevel = 2;
                Navigator.pushNamed(context, bodyPartsD);
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
      Audio("assets/audio/story/funikaelly.mp3"),
    );
  }
   void onPlayAudio1() async {
   _assetsAudioPlayer.open(
      Audio("assets/audio/story/funikaibra.mp3"),
    );
  }
  
 
 
}
