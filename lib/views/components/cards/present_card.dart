import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jifunze/constants/routes.dart';
import 'package:jifunze/provider/present_provider.dart';
import 'package:provider/provider.dart';

import 'flip_card.dart';

class PresentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _presentProvider = Provider.of<PresentProvider>(context);
    return Scaffold(
        body: Stack(
      children: [
        GridView.builder(
            itemCount: _presentProvider.availablePresents.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return FlipCard(
                onFlipDone: (status) {
                  //set flips
                  _presentProvider.flipPresent =
                      _presentProvider.availablePresents[index].id;
                },
                direction: FlipDirection.HORIZONTAL, // default
                front: Container(
                  child: SvgPicture.asset(
                    'assets/images/tiles/tilembao.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                back: Container(
                  child: SvgPicture.asset(
                    _presentProvider.availablePresents[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
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
          right: MediaQuery.of(context).size.width / 1.07,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 16,
          left: MediaQuery.of(context).size.width / 1.07,
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
              size: 40,
            ),
            onPressed: () {
              onPlayAudio2();
              Navigator.pushNamed(context, presentsA);
            },
          ),
        ),
      ],
    ));
  }

  void onPlayAudio2() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/ellyshop.mp3"),
    );
  }
}
