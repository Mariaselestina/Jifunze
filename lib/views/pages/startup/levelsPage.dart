import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/provider/level_provider.dart';
import 'package:provider/provider.dart';

class LevelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _levelProvider = Provider.of<LevelProvider>(context);
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            'assets/images/environment/levels.svg',
            width: 200,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
            Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(Icons.info_outline_rounded, color: Colors.black, size: 50),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 3,
          right: MediaQuery.of(context).size.width / 1.35,
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/images/gifimages/butterfly2.gif',
              fit: BoxFit.cover,
            ),
          ),
        ),
          Positioned(
          bottom: MediaQuery.of(context).size.height / 1.8,
          left: MediaQuery.of(context).size.width / 1.2,
          child: Container(
            height: 90,
            width: 100,
            child: Image.asset(
              'assets/images/gifimages/goat.gif',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            bottom: 285,
            left: MediaQuery.of(context).size.width / 4,
            child: InkWell(
                onTap: () {
                
                  Navigator.pushNamed(context, beginingPage);
                   //onPlayAudio1();
              
                },
                child: Container(
                  child: Center(child: Icon(Icons.lock_open, size: 40)),
                  height: 70,
                  width: 70,
                ))),
        Positioned(
            bottom: 190,
            left: MediaQuery.of(context).size.width / 2.3,
            child: InkWell(
                onTap: () {
                  if (_levelProvider.availableLevels[1].isOpened)
                    Navigator.pushNamed(context, beginingPresents);
                },
                child: Container(
                  child: Center(
                      child: Icon(
                          _levelProvider.availableLevels[1].isOpened
                              ? Icons.lock_open
                              : Icons.lock,
                          size: 40)),
                  color: _levelProvider.availableLevels[1].isOpened
                      ? Colors.transparent
                      : Colors.black12,
                  height: 70,
                  width: 70,
                ))),
        Positioned(
            bottom: 105,
            left: MediaQuery.of(context).size.width / 1.25,
            child: InkWell(
                onTap: () {
                  if (_levelProvider.availableLevels[2].isOpened)
                    Navigator.pushNamed(context, beginingenvironment);
                },
                child: Container(
                  child: Center(
                      child: Icon(
                          _levelProvider.availableLevels[2].isOpened
                              ? Icons.lock_open
                              : Icons.lock,
                          size: 40)),
                  color: _levelProvider.availableLevels[1].isOpened
                      ? Colors.transparent
                      : Colors.black12,
                  height: 70,
                  width: 70,
                ))),
      ],
    ));
  }
  void onPlayAudio1() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/background.mp3"),
    );
  }
}
