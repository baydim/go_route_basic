import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_route_basic/routes/routes.dart';
import 'package:go_router/go_router.dart';

import 'screen/1.dart';
import 'screen/2.dart';
import 'screen/3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter route = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            log("bukak 1");
            return const Screen1();
          },
          routes: [
            GoRoute(
              path: '22',
              builder: (BuildContext context, GoRouterState state) {
                log("bukak 22");
                return const Screen2();
              },
            ),
            GoRoute(
              path: '33',
              builder: (BuildContext context, GoRouterState state) {
                return const Screen3();
              },
            ),
          ],
        ),
        GoRoute(
          path: '/2',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen2();
          },
        ),
        GoRoute(
          path: '/3',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen3();
          },
        ),
      ],
    );
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: route.routeInformationParser,
      routeInformationProvider: route.routeInformationProvider,
      routerDelegate: route.routerDelegate,
    );
  }
}
