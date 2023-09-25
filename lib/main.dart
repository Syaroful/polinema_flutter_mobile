import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/basic_widget/cupertino.dart';
import 'package:polinema_flutter_mobile/basic_widget/image_widget.dart';
import 'package:polinema_flutter_mobile/basic_widget/text_widget.dart';

void main() {
  runApp(const MyApp());
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.thumb_up),
      ),
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButtonApp(),
          ],
        ),
      ),
    );
  }
}
