import 'package:flutter/material.dart';

class Present {
  final int id;
  final String image;
  bool isFlipped;
  bool isMatched;

  Present(
      {@required this.id,
      @required this.image,
      @required this.isFlipped,
      @required this.isMatched});
}

List<Present> firstPresentList = <Present>[
  Present(
      id: 1,
      image: 'assets/images/tiles/tilebottle.svg',
      isFlipped: false,
      isMatched: false),
  Present(
      id: 2,
      image: 'assets/images/tiles/tilebag.svg',
      isFlipped: false,
      isMatched: false),
  Present(
      id: 3,
      image: 'assets/images/tiles/tileshoe.svg',
      isFlipped: false,
      isMatched: false),
  Present(
      id: 4,
      image: 'assets/images/tiles/tilebottle.svg',
      isFlipped: false,
      isMatched: false),
  Present(
      id: 5,
      image: 'assets/images/tiles/tilebag.svg',
      isFlipped: false,
      isMatched: false),
  Present(
      id: 6,
      image: 'assets/images/tiles/tileshoe.svg',
      isFlipped: false,
      isMatched: false),
];
