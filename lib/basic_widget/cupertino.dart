import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonApp extends StatelessWidget {
  const CupertinoButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CupertinoButton.filled(
            child: const Text("Contoh button"),
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          const CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}
