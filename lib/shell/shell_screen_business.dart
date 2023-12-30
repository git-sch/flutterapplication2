import 'package:flutter/material.dart';

class ShellScreenBusiness extends StatelessWidget {
  const ShellScreenBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.purple, width: 2)),
      child: Scaffold(
          appBar: AppBar(title: const Text('ShellScreenBusiness')),
          body: const Text('ShellScreenBusiness')),
    );
  }
}
