import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PresentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(40),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 3,
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilebottle.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilebag.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tileshoe.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilebottle.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilebag.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tilembao.svg',
                  fit: BoxFit.fill,
                ),
              ),
              back: Container(
                child: SvgPicture.asset(
                  'assets/images/tiles/tileshoe.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
