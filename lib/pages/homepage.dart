import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouternavigation/pages/login.dart';

import '../routes/app_routes_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Homepage"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(RoutesConstant.about,
                      pathParameters: {"username": "Nitesh Paudel"});
                },
                child: const Text("About Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    RoutesConstant.contact,
                  );
                },
                child: const Text("Contact Us Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.pushReplacementNamed(RoutesConstant.login);
                  setState(() {
                    isAuthenticated = !isAuthenticated;
                  });
                },
                child: const Text("Log out")),
          ],
        ),
      ),
    );
  }
}
