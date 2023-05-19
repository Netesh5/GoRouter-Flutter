import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/about.dart';
import '../pages/contact.dart';
import '../pages/error_page.dart';
import '../pages/homepage.dart';
import 'app_routes_constant.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesConstant.homepage,
        path: "/",
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        name: RoutesConstant.about,
        path: "/aboutus/:username",
        pageBuilder: (context, state) {
          return MaterialPage(
              child: AboutUs(
            username: state.pathParameters["username"]!,
          ));
        },
      ),
      GoRoute(
        name: RoutesConstant.contact,
        path: "/contactus",
        pageBuilder: (context, state) {
          return const MaterialPage(child: ContactUs());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
