import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 280,
          color: Colors.red,
          child: Image.network(
            'https://images.unsplash.com/photo-1610809027249-86c649feacd5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gunung Kembar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'switzerland',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('5.0'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.red,
                    size: 30,
                  ),
                  Text('CALL'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                  Text('ROUTE'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.red,
                    size: 30,
                  ),
                  Text('SHARE'),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lobortis augue a ligula pellentesque rutrum. Sed sed eros risus. Proin quam diam, commodo finibus est nec, feugiat blandit neque. In venenatis viverra mattis. Curabitur at felis vehicula, aliquam nibh a, ornare sapien. Aliquam consectetur mauris libero, id efficitur augue luctus sit amet. Pellentesque tristique libero ut mauris bibendum dignissim. Sed sodales nisi nec felis viverra, ut cursus risus scelerisque. Nunc dapibus dapibus ex et vulputate.'),
        )
      ]),
    );
  }
}
