import 'package:flutter/material.dart';
import 'package:jifunze/model/item.dart';

typedef ItemCardOnTap = Function();

class ItemCard extends StatelessWidget {
  final Item item;
  final ItemCardOnTap onPressed;

  const ItemCard({Key key, @required this.item, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onPressed,
      child: Material(
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(item.cover))),
        ),
      ),
    );
  }
}
