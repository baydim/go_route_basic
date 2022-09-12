import 'package:flutter/material.dart';
import 'package:go_route_basic/screen/1.dart';
import 'package:go_router/go_router.dart';

import '../screen/2.dart';
import '../screen/3.dart';

class Routes {
  static GoRouter router(BuildContext context) => GoRouter(
        routes: <GoRoute>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const Screen1();
            },
            routes: [
              GoRoute(
                path: '22',
                builder: (BuildContext context, GoRouterState state) {
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
}
