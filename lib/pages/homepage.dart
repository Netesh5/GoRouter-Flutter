import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouternavigation/routes/app_routes_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  GoRouter.of(context).pushNamed(RoutesConstant.about);
                },
                child: const Text("About Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(RoutesConstant.contact);
                },
                child: const Text("Contact Us Page")),
          ],
        ),
      ),
    );
  }
}
