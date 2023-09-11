import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/theme/generate_theme.dart';

class ConvertInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const ConvertInput({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: GenerateTheme.inputDecoration(hint),
    );
  }
}
