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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: item.name,
                child: Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(item.picturePath), fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Product Name :', style: TextStyle(fontSize: 20)),
                  Text('${item.name}', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price :', style: TextStyle(fontSize: 20)),
                  Text('${item.price}', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Sold :', style: TextStyle(fontSize: 20)),
                  Text('${item.sold}', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rating', style: TextStyle(fontSize: 20)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text('${item.rate}', style: TextStyle(fontSize: 20)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
