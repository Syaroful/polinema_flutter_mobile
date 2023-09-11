import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ConvertButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
