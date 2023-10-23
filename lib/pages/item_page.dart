import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(item.name),
            Text(item.price.toString()),
          ],
        ),
      ),
    );
  }
}
