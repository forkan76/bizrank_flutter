// ignore: file_names
import 'package:flutter/material.dart';
import 'package:npkbh/Fragment/fruit.dart' show Fruit;
import 'fruitItem.dart';

class FruitList extends StatelessWidget {
  final List<Fruit> items;

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const FruitList({super.key, required Key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FruitItem(item: items[index]);
      },
    );
  }
}
