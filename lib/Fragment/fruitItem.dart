import 'package:flutter/material.dart';
import 'fruit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.item});

  final Fruit item;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 140,
        child: Card(
          elevation: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  item.imgUrl,
                  width: 200,
                ),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(item.title,
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("id:${item.id}"),
                            Text("quantity:${item.quantity}"),
                          ],
                        )))
              ]),
        ));
  }
}
