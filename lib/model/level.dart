import 'package:flutter/material.dart';

class Level {
  final int id;
  final String age;
  final String cover;
  bool isOpened;

  Level(
      {@required this.id,
      @required this.age,
      @required this.cover,
      @required this.isOpened});
}

List<Level> mainLevelList = <Level>[
  Level(id: 1, age: '3-4', cover: 'assets/images/a.jpg', isOpened: true),
  Level(id: 2, age: '3-4', cover: 'assets/images/b.jpg', isOpened: false),
  Level(id: 3, age: '3-4', cover: 'assets/images/c.jpg', isOpened: false),
];
