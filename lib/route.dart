import 'package:flutterapplication2/screens/extra_param_screen.dart';
import 'package:flutterapplication2/screens/home_screen_detail.dart';
import 'package:flutterapplication2/screens/path_param_screen.dart';
import 'package:flutterapplication2/screens/query_param_screen.dart';
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
      ],
    ),
    GoRoute(
      path: '/pathParamScreen/:id',
      builder: (context, state) {
        String id = state.pathParameters['id'].toString();
        return PathParamScreen(id: id);
      },
    ),
    GoRoute(
      path: '/queryParamScreen',
      builder: (context, state){
        String id = state.uri.queryParameters['id'].toString();
        return QueryParamScreen(id: id);
      },
    ),
    GoRoute(
      path: '/extraParamScreen',
      builder: (context, state) {
        String id = (state.extra ?? 'null') as String;
        return ExtraParamScreen(id: id);
      }
    ),
  ],
);
