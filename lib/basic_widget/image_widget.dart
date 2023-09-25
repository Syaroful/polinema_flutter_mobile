import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/logo_polinema.png'),
      height: 200,
      width: 200,
    );
  }
}
