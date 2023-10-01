import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/basic_widget/form_contoh.dart';
import 'package:polinema_flutter_mobile/basic_widget/image_widget.dart';
import 'package:polinema_flutter_mobile/basic_widget/input_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController.fromValue(
    const TextEditingValue(text: "isi angka saja"),
  );
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterReverse() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2141720108 - Muhamad Syarful Anam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  VerificationCodeFormField(controller: _controller),
                  Builder(
                    builder: (BuildContext subContext) => ElevatedButton(
                      onPressed: () {
                        final valid = Form.of(subContext)?.validate();
                        if (kDebugMode) {
                          print("valid: $valid");
                        }
                      },
                      child: const Text("validate"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
