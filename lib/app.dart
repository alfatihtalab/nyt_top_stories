import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class AppProvider extends StatelessWidget {
  AppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'GoRouter Example',
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return Container();
        },
      ),
      GoRoute(
        path: '/b',
        builder: (BuildContext context, GoRouterState state) {
          return Container();
        },
      ),
    ],
  );

}