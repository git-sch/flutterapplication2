import 'package:flutter/material.dart';
import 'package:flutterapplication2/screens/extra_param_screen.dart';
import 'package:flutterapplication2/screens/home_screen_detail.dart';
import 'package:flutterapplication2/screens/path_param_screen.dart';
import 'package:flutterapplication2/screens/query_param_screen.dart';
import 'package:flutterapplication2/shell/shell_screen.dart';
import 'package:flutterapplication2/shell/shell_screen_business.dart';
import 'package:flutterapplication2/shell/shell_screen_home.dart';
import 'package:flutterapplication2/shell/shell_screen_school.dart';
import 'package:go_router/go_router.dart';
import 'package:flutterapplication2/screens/home_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router2 = GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return ShellScreen(child: child);
          },
          routes: [ 
            GoRoute(
              path: '/home',
              //클릭시 페이지 번쩍임
              // builder: (context, state) {
              //  // String uri = GoRouterState.of(context).uri.toString();
              //   return const ShellScreenHome();}

              //번쩍임 없이
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: ShellScreenHome());
              },
            ),
            GoRoute(
                path: '/business',
                // builder: (context, state) {
                //   return const ShellScreenBusiness();
                // }
                pageBuilder: (context, state) {
                return const NoTransitionPage(child: ShellScreenBusiness());
              },
                ),
            GoRoute(
                path: '/school',
                // builder: (context, state) {
                //   return const ShellScreenSchool();
                // }
                pageBuilder: (context, state) {
                return const NoTransitionPage(child: ShellScreenSchool());
              },
                )
          ])
    ]);

//GoRouter configuration
final router = GoRouter(
  //initialLocation: '/details',
  // redirect: (context, state) {
  //   //자동로그인
  //   //토큰 등 관리
  //   // debugPrint('### ${state.fullPath}');
  //   // String? token;
  //   // if (token == null) {
  //   //   return '/details';
  //   // }
  // },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        // GoRoute(
        //   path: 'details',
        //   builder: (context, state) => const HomeScreenDetail(),
        // ),
        GoRoute(
          path: 'details',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomeScreenDetail(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.linear).animate(animation),
                  child: child,
                );
              },
            );
          },
        )
      ],
    ),
    GoRoute(
      name: 'path',
      path: '/pathParamScreen/:id',
      builder: (context, state) {
        String id = state.pathParameters['id'].toString();
        return PathParamScreen(id: id);
      },
    ),
    GoRoute(
      name: 'query',
      path: '/queryParamScreen',
      builder: (context, state) {
        String id = state.uri.queryParameters['id'].toString();
        return QueryParamScreen(id: id);
      },
    ),
    GoRoute(
      path: '/extraParamScreen',
      name: 'hihihi',
      builder: (context, state) {
        String id = (state.extra ?? 'null') as String;
        return ExtraParamScreen(id: id);
      },
    ),
  ],
);
