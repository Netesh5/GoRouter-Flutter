import 'package:flutter/material.dart';

import 'routes/app_routes_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.routes().routeInformationParser,
      routerDelegate: AppRouter.routes().routerDelegate,
    );
  }
}
