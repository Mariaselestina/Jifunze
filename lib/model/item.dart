import 'package:flutter/material.dart';

class Item {
  final int id;
  final int levelId;
  final int stage;
  final String cover;
  final bool isCorrect;

  Item(
      {@required this.id,
      @required this.levelId,
      @required this.stage,
      @required this.cover,
      @required this.isCorrect});
}

List<Item> itemLevelOneList = <Item>[
  Item(
      id: 1,
      levelId: 1,
      cover: 'assets/images/a.jpg',
      isCorrect: true,
      stage: 1),
  Item(
      id: 2,
      levelId: 1,
      cover: 'assets/images/b.jpg',
      isCorrect: false,
      stage: 1),
  Item(
      id: 3,
      levelId: 1,
      cover: 'assets/images/c.jpg',
      isCorrect: false,
      stage: 1),
  Item(
      id: 4,
      levelId: 1,
      cover: 'assets/images/d.jpg',
      isCorrect: true,
      stage: 1),
  Item(
      id: 1,
      levelId: 1,
      cover: 'assets/images/b.jpg',
      isCorrect: true,
      stage: 2),
  Item(
      id: 2,
      levelId: 1,
      cover: 'assets/images/c.jpg',
      isCorrect: false,
      stage: 2),
  Item(
      id: 3,
      levelId: 1,
      cover: 'assets/images/a.jpg',
      isCorrect: false,
      stage: 2),
  Item(
      id: 4,
      levelId: 1,
      cover: 'assets/images/d.jpg',
      isCorrect: true,
      stage: 2),
  Item(
      id: 1,
      levelId: 1,
      cover: 'assets/images/d.jpg',
      isCorrect: true,
      stage: 3),
  Item(
      id: 2,
      levelId: 1,
      cover: 'assets/images/c.jpg',
      isCorrect: false,
      stage: 3),
  Item(
      id: 3,
      levelId: 1,
      cover: 'assets/images/b.jpg',
      isCorrect: false,
      stage: 3),
  Item(
      id: 4,
      levelId: 1,
      cover: 'assets/images/a.jpg',
      isCorrect: true,
      stage: 3),
  Item(
      id: 1,
      levelId: 1,
      cover: 'assets/images/b.jpg',
      isCorrect: true,
      stage: 4),
  Item(
      id: 2,
      levelId: 1,
      cover: 'assets/images/d.jpg',
      isCorrect: false,
      stage: 4),
  Item(
      id: 3,
      levelId: 1,
      cover: 'assets/images/c.jpg',
      isCorrect: false,
      stage: 4),
  Item(
      id: 4,
      levelId: 1,
      cover: 'assets/images/a.jpg',
      isCorrect: true,
      stage: 4),
];
