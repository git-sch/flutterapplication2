import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellScreen extends StatelessWidget {
  const ShellScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
    child: Scaffold(
        appBar: AppBar(title: const Text('ShellScreenMain')),
        body: child,
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), label: 'Business'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school_outlined), label: 'School'),
            ],
            currentIndex: getIndex(context),
            selectedItemColor: Colors.amber,
            onTap: (value) {
              context.go('/business');
              switch (value) {
                case 0:
                  context.go('/home');
                //break;
                case 1:
                  context.go('/business');
                //break;
                case 2:
                  context.go('/school');
                //break;
                default:
              }
            }),
      ),
    );
  }

  getIndex(BuildContext context) {
    int i = 0;
    switch (GoRouterState.of(context).uri.toString()) {
      case '/home':
        i = 0;
      case '/business':
        i = 1;
      case '/school':
        i = 2;
      default:
        0;
    }

    return i;
  }
}
