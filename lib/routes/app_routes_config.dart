import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouternavigation/pages/error_page.dart';
import 'package:gorouternavigation/routes/app_routes_constant.dart';

import '../pages/about.dart';
import '../pages/contact.dart';
import '../pages/homepage.dart';

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
        path: "/aboutus",
        pageBuilder: (context, state) {
          return const MaterialPage(child: AboutUs());
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
