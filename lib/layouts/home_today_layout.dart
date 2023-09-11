import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/components/news_card.dart';

class HomeTodaylayout extends StatelessWidget {
  const HomeTodaylayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NewsCard(title: 'Barcelona vs Real Madrid'),
      ],
    );
  }
}
