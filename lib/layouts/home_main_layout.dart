import 'package:flutter/material.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1602674809970-89073c530b0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
