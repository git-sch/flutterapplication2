import 'package:flutterapplication2/screens/home_screen_detail.dart';
import 'package:go_router/go_router.dart';
import 'package:flutterapplication2/screens/home_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'details',
            builder: (context, state) => const HomeScreenDetail(),
          ),
        ]),
  ],
);
