import 'package:flutter/material.dart';
import 'package:polinema_flutter_mobile/layouts/home_main_layout.dart';
import 'package:polinema_flutter_mobile/layouts/home_today_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('My App'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Updated News'),
              ),
              Tab(
                child: Text('Today Match'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeMainLayout(),
            HomeTodaylayout(),
          ],
        ),
      ),
    );
  }
}
