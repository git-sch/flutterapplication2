import 'package:flutter/material.dart';

class ShellScreenHome extends StatelessWidget {
  const ShellScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      child: Scaffold(
        appBar: AppBar(title: const Text('ShellScreenHome')),
        body: const Text('123'),
      ),
    );
  }
}
