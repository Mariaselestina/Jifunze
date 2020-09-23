import 'package:flutter/material.dart';
import 'package:jifunze/model/item.dart';
import 'package:jifunze/views/components/cards/item_card.dart';

class GameWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: itemLevelOneList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ItemCard(
                  item: itemLevelOneList[index],
                  onPressed: () {},
                );
              })),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
          color: Colors.orangeAccent,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Chip(
                      backgroundColor: Colors.blue,
                      label: Text(
                        'stage 1',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: Colors.grey,
                      label: Text(
                        'stage 2',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: Colors.grey,
                      label: Text(
                        'stage 3',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: Colors.grey,
                      label: Text(
                        'stage 4',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
