import 'package:flutter/material.dart';

import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class Prs extends StatefulWidget {
  @override
  PrsState createState() => PrsState();
}

class PrsState extends State<Prs>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    // ignore: todo
    //TODO:implement initState
    super.initState();
    controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        // .addAnimatable(
        //     animatable: Tween(begin: 
        //   Colors.red  , end: Colors.green),
        //     from: Duration(seconds: 0),
        //     to: Duration(seconds: 2),
        //     tag: "color")
            .addAnimatable(
            animatable: Tween(begin: 'assets/images/characters/boyy-02.png', end: 'assets/images/characters/boyy-03.png'),
            from: Duration(seconds: 0),
            to: Duration(seconds: 4),
            tag: "image")
        .animate(controller);
    controller.forward();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   child: SvgPicture.asset(
          //     'assets/images/environment/envtwoBhome.svg',
          //     width: 200,
          //     height: 100,
          //     fit: BoxFit.fill,
          //   ),
          // ),
          Container(
              child: Center(
                  child: AnimatedBuilder(
                      animation: controller,
                      builder: (BuildContext context, Widget child) {
                        return Container(
                          height: 200,
                          width: 200,
                          margin: sequenceAnimation["image"].value,
                        );
                      }))),
        ],
      ),
    );
  }
}
