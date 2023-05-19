import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouternavigation/routes/app_routes_constant.dart';

bool isAuthenticated = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                isAuthenticated = !isAuthenticated;
              });

              context.replaceNamed(RoutesConstant.homepage);
            },
            child: const Text("Log in")),
      ),
    );
  }
}
