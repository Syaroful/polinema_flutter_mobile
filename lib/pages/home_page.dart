import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/pages/item_page.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        picturePath: 'assets/images/sugar.jpg',
        rate: 4.5,
        sold: 100),
    Item(
        name: 'Salt',
        price: 2000,
        picturePath: 'assets/images/salt.jpg',
        rate: 4.5,
        sold: 100),
    Item(
        name: 'Egg',
        price: 15000,
        picturePath: 'assets/images/egg.jpg',
        rate: 4.5,
        sold: 100),
    Item(
        name: 'Milk',
        price: 20000,
        picturePath: 'assets/images/milk.jpg',
        rate: 4.5,
        sold: 100),
    Item(
        name: 'Rice',
        price: 10000,
        picturePath: 'assets/images/rice.jpg',
        rate: 4.5,
        sold: 100),
    Item(
        name: 'Flour',
        price: 5000,
        picturePath: 'assets/images/flour.jpg',
        rate: 4.5,
        sold: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk'),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ItemPage(item: items[index]);
                      },
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hero(
                        tag: items[index].name,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: AssetImage(items[index].picturePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Price: ${items[index].price}',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '${items[index].rate}',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.grey[600],
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '${items[index].sold}',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text(
            'Muhamad Syaroful Anam\n'
            '2141720108',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
