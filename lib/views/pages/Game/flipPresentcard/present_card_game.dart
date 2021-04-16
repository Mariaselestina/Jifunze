import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dart:async';

import 'package:jifunze/model/presents.dart';

class PresentCardGame extends StatefulWidget {
  final Level _level;
  PresentCardGame(this._level);
  @override
  _PresentCardGameState createState() => _PresentCardGameState(_level);
}

class _PresentCardGameState extends State<PresentCardGame> {
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  _PresentCardGameState(this._level);

  int _previousIndex = -1;
  bool _flip = false;
  bool _start = false;

  bool _wait = false;
  Level _level;
  Timer _timer;
  int _time = 5;
  int _left;
  bool _isFinished;
  List<String> _data;

  List<bool> _cardFlips;
  List<GlobalKey<FlipCardState>> _cardStateKeys;

  Widget getItem(int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 3,
              spreadRadius: 0.8,
              offset: Offset(2.0, 1),
            )
          ],
          borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(4.0),
      child: Image.asset(_data[index]),
    );
  }

  startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        _time = _time - 1;
      });
    });
  }

  void restart() {
    startTimer();
    _data = getSourceArray(
      _level,
    );
    _cardFlips = getInitialItemState(_level);
    _cardStateKeys = getCardStateKeys(_level);
    _time = 5;
    _left = (_data.length ~/ 2);

    _isFinished = false;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _start = true;
        _timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();

    restart();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isFinished
        ? Scaffold(
            body: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    onPlayAudio2();
                    restart();
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        "Vizuri Sana!\n      Rudia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                        //alignment: Alignment.center,
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
                  ],
                ),
              ),
            ),
          )
        : Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: _time > 0
                          ? Text(
                              '$_time',
                              style: Theme.of(context).textTheme.headline3,
                            )
                          : Text(
                              'Baki:$_left',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                    ),
                    Padding(
                      padding: _level == Level.Easy
                          ? EdgeInsets.only(
                              left: 100.0,
                              right: 100,
                            )
                          : (_level == Level.Medium
                              ? EdgeInsets.only(
                                  left: 140.0,
                                  right: 140,
                                )
                              : EdgeInsets.only(
                                  left: 40.0,
                                  right: 40,
                                )),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _level == Level.Easy
                              ? 3
                              : (_level == Level.Medium ? 4 : 6),
                        ),
                        itemBuilder: (context, index) => _start
                            ? FlipCard(
                                key: _cardStateKeys[index],
                                onFlip: () {
                                  if (!_flip) {
                                    _flip = true;
                                    _previousIndex = index;
                                  } else {
                                    _flip = false;
                                    if (_previousIndex != index) {
                                      if (_data[_previousIndex] !=
                                          _data[index]) {
                                        _wait = true;

                                        Future.delayed(
                                            const Duration(milliseconds: 1500),
                                            () {
                                          _cardStateKeys[_previousIndex]
                                              .currentState
                                              .toggleCard();
                                          _previousIndex = index;
                                          _cardStateKeys[_previousIndex]
                                              .currentState
                                              .toggleCard();

                                          Future.delayed(
                                              const Duration(milliseconds: 160),
                                              () {
                                            setState(() {
                                              _wait = false;
                                            });
                                          });
                                        });
                                      } else {
                                        _cardFlips[_previousIndex] = false;
                                        _cardFlips[index] = false;
                                        print(_cardFlips);

                                        setState(() {
                                          _left -= 1;
                                        });
                                        if (_cardFlips
                                            .every((t) => t == false)) {
                                          onPlayAudio2();
                                          print("Won");
                                          Future.delayed(
                                              const Duration(milliseconds: 160),
                                              () {
                                            setState(() {
                                              _isFinished = true;
                                              _start = false;
                                            });
                                          });
                                        }
                                      }
                                    }
                                  }
                                  setState(() {});
                                },
                                flipOnTouch: _wait ? false : _cardFlips[index],
                                direction: FlipDirection.HORIZONTAL,
                                front: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black45,
                                          blurRadius: 3,
                                          spreadRadius: 0.8,
                                          offset: Offset(2.0, 1),
                                        )
                                      ]),
                                  margin: EdgeInsets.all(4.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      "assets/animalspics/quest.svg",
                                    ),
                                  ),
                                ),
                                back: getItem(index))
                            : getItem(index),
                        itemCount: _data.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  void onPlayAudio2() async {
    _assetsAudioPlayer.open(
      Audio("assets/audio/story/vizurisana.mp3"),
    );
  }
}
