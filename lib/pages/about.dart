import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("About us"),
            const SizedBox(
              height: 20,
            ),
            Text(username)
          ],
        ),
      ),
    );
  }
}
