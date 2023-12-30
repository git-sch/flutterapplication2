import 'package:flutter/material.dart';

class ShellScreenSchool extends StatelessWidget {
  const ShellScreenSchool({super.key});

  @override
 Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.yellow, width: 2)),
      child: Scaffold(
          appBar: AppBar(title: const Text('ShellScreenSchool')),
          body: const Text('ShellScreenSchool')),
    );
  }
}