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
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(item.cover))),
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
