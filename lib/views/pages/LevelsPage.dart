import 'package:flutter/material.dart';
import 'package:jifunze/model/level.dart';
import 'package:jifunze/views/components/cards/level_card.dart';

class LevelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                 
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(
                            4,
                            (index) => LevelCard(
                                  level: levelOneList[index],
                                  onPressed: () {
                                    print(levelOneList[index].id);
                                  },
                                ))
                                ),

                            
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(25)),
                        CircleAvatar(radius: 60),
                        Text(
                          'Kid\'s Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        
                        SizedBox(height: 40),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
