import 'package:flutter/material.dart';

class HomeScreenDetail extends StatelessWidget {
  const HomeScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Router 연습'),
      ),
      body: const Placeholder(),
    );
  }
}
