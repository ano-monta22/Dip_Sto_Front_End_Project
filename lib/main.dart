import 'package:dipstore_project/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StartingPoint());
}
class StartingPoint extends StatelessWidget {
  const StartingPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}