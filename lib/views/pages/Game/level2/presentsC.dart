import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PresentsC extends StatefulWidget {
  @override
  _PresentsCState createState() => _PresentsCState();
}

class _PresentsCState extends State<PresentsC> {
  final double _shirtSize = 100;
  bool shadowAccepted = false;
  bool tree1Accepted = false;
  bool strangerAccepted = false;
  bool road1Accepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/dragthings/shadowstranger.svg',
              
              fit: BoxFit.fill,
            ),
          ),
          
          //  Positioned(
          //     top: MediaQuery.of(context).size.height / 2.9,
          //     left: MediaQuery.of(context).size.width / 3.9,
          //     child: DragTarget<String>(
          //       onWillAccept: (value) => value == 'SHADOW',
          //       onAccept: (value) {
          //         setState(() {
          //           shadowAccepted = true;
          //         });
          //       },
          //       onLeave: (value) {
          //         //Alert the user their value ddint land
          //       },
          //       builder: (context, candidates, rejects) {
          //         return shadowAccepted
          //             ? Container(
          //                 child: SvgPicture.asset(
          //                   'assets/images/dragthings/shadowCar.svg',
          //                   fit: BoxFit.cover,
          //                 ),
          //                 height: 100,
          //                 width: 95,
          //               )
          //             : Container(height: 90, width: 90);
          //       },
          //     )),
          // Positioned(
          //     top: MediaQuery.of(context).size.height / 2.9,
          //     left: MediaQuery.of(context).size.width / 3.9,
          //     child: DragTarget<String>(
          //       onWillAccept: (value) => value == 'BLOUSE2',
          //       onAccept: (value) {
          //         setState(() {
          //           blouse2Accepted = true;
          //         });
          //       },
          //       onLeave: (value) {
          //         //Alert the user their value ddint land
          //       },
          //       builder: (context, candidates, rejects) {
          //         return blouse2Accepted
          //             ? Container(
          //                 child: SvgPicture.asset(
          //                   'assets/images/characters/blouse2.svg',
          //                   fit: BoxFit.cover,
          //                 ),
          //                 height: 100,
          //                 width: 95,
          //               )
          //             : Container(height: 90, width: 90);
          //       },
          //     )),
          // Positioned(
          //     top: MediaQuery.of(context).size.height / 1.8,
          //     left: MediaQuery.of(context).size.width / 4.6,
          //     child: DragTarget<String>(
          //       onWillAccept: (value) => value == 'SKIRT1',
          //       onAccept: (value) {
          //         setState(() {
          //           skirt1Accepted = true;
          //         });
          //       },
          //       onLeave: (value) {
          //         //Alert the user their value ddint land
          //       },
          //       builder: (context, candidates, rejects) {
          //         return skirt1Accepted
          //             ? Container(
          //                 child: SvgPicture.asset(
          //                   'assets/images/characters/skirt1.svg',
          //                   fit: BoxFit.cover,
          //                 ),
          //                 height: 80,
          //                 width: 150,
          //               )
          //             : Container(
          //                 height: 80,
          //                 width: 150,
          //               );
          //       },
          //     )),
          // // Positioned(
          //     top: 10,
          //     right: 10,
          //     child: Column(
          //       children: [
          //         Container(
          //           color: Colors.blue,
          //           child: Draggable<String>(
          //               data: "BLOUSE1",
          //               feedback: SvgPicture.asset(
          //                 'assets/images/characters/blouse1.svg',
          //                 height: _shirtSize,
          //                 fit: BoxFit.cover,
          //               ),
          //               childWhenDragging: Container(
          //                 color: Colors.brown,
          //                 height: _shirtSize,
          //                 child: Container(
          //                   color: Colors.white,
          //                   height: _shirtSize,
          //                   width: _shirtSize,
          //                 ),
          //               ),
          //               child: blouse1Accepted
          //                   ? Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         height: _shirtSize,
          //                         width: _shirtSize,
          //                       ),
          //                     )
          //                   : Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       width: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         child: SvgPicture.asset(
          //                           'assets/images/characters/blouse1.svg',
          //                           height: _shirtSize,
          //                           fit: BoxFit.cover,
          //                         ),
          //                       ),
          //                     )),
          //         ),
          //         Container(
          //           color: Colors.blue,
          //           child: Draggable<String>(
          //               data: "BLOUSE2",
          //               feedback: SvgPicture.asset(
          //                 'assets/images/characters/blouse2.svg',
          //                 height: _shirtSize,
          //                 fit: BoxFit.cover,
          //               ),
          //               childWhenDragging: Container(
          //                 color: Colors.brown,
          //                 height: _shirtSize,
          //                 child: Container(
          //                   color: Colors.white,
          //                   height: _shirtSize,
          //                   width: _shirtSize,
          //                 ),
          //               ),
          //               child: blouse2Accepted
          //                   ? Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         height: _shirtSize,
          //                         width: _shirtSize,
          //                       ),
          //                     )
          //                   : Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       width: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         child: SvgPicture.asset(
          //                           'assets/images/characters/blouse2.svg',
          //                           height: _shirtSize,
          //                           fit: BoxFit.cover,
          //                         ),
          //                       ),
          //                     )),
          //         ),
          //         Container(
          //           color: Colors.blue,
          //           child: Draggable<String>(
          //               data: "SKIRT1",
          //               feedback: SvgPicture.asset(
          //                 'assets/images/characters/skirt1.svg',
          //                 height: _shirtSize,
          //                 fit: BoxFit.cover,
          //               ),
          //               childWhenDragging: Container(
          //                 color: Colors.brown,
          //                 height: _shirtSize,
          //                 child: Container(
          //                   color: Colors.white,
          //                   height: _shirtSize,
          //                   width: _shirtSize,
          //                 ),
          //               ),
          //               child: skirt1Accepted
          //                   ? Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         height: _shirtSize,
          //                         width: _shirtSize,
          //                       ),
          //                     )
          //                   : Container(
          //                       color: Colors.brown,
          //                       height: _shirtSize,
          //                       width: _shirtSize,
          //                       child: Container(
          //                         color: Colors.white,
          //                         child: SvgPicture.asset(
          //                           'assets/images/characters/skirt1.svg',
          //                           fit: BoxFit.cover,
          //                           height: _shirtSize,
          //                         ),
          //                       ),
          //                     )),
          //         ),
          //       ],
          //     )),
          
        ],
      ),
    );
  }
}
