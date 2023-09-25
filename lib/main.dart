import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/basic_widget/cupertino.dart';
import 'package:polinema_flutter_mobile/basic_widget/date_time_picker.dart';
import 'package:polinema_flutter_mobile/basic_widget/dialog_widget.dart';
import 'package:polinema_flutter_mobile/basic_widget/image_widget.dart';
import 'package:polinema_flutter_mobile/basic_widget/input_widget.dart';
import 'package:polinema_flutter_mobile/basic_widget/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePageDateTimePicker(title: 'Syaroful Anam'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextInput(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}
