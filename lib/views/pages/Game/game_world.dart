import 'package:flutter/material.dart';
import 'package:jifunze/model/item.dart';
import 'package:jifunze/views/components/cards/item_card.dart';

class GameWorld extends StatefulWidget {
  @override
  _GameWorldState createState() => _GameWorldState();
}

class _GameWorldState extends State<GameWorld> {
  int _currentStage = 1;

  _selectStage(int stage) {
    setState(() {
      _currentStage = stage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.80,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ItemCard(
                              item: itemLevelOneList[0],
                              onPressed: () {},
                            ),
                            SizedBox(width: 10),
                            ItemCard(
                              item: itemLevelOneList[1],
                              onPressed: () {},
                            )
                          ]),
                      SizedBox(height: 10),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ItemCard(
                              item: itemLevelOneList[2],
                              onPressed: () {},
                            ),
                            SizedBox(width: 10),
                            ItemCard(
                              item: itemLevelOneList[3],
                              onPressed: () {},
                            )
                          ])
                    ])),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.orangeAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "Please select the image that indicated an unsafe touch",
                            style: TextStyle(fontSize: 20),
                          )),
                          RaisedButton(
                              child: Text('submit'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container(height: 4, color: Colors.blue)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: Container(height: 4, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(height: 4, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(height: 4, color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
