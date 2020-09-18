import 'package:flutter/material.dart';
import 'package:jifunze/model/level.dart';
typedef LevelCardOnTap = Function();
class LevelCard extends StatelessWidget {
 final   Level level;
 final LevelCardOnTap onPressed;

  const LevelCard({Key key, @required this.level, @required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onPressed,
          child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(level.cover))),
          height: 150,
          width: 150,
        ),
        Container(
          height: 150,
          width: 150,
            child: Center(
              child: Icon(
               level.isOpened ? Icons.lock_open : Icons.lock,
                size: 50,
              ),
            ))
      ]),
    );
  }
}
