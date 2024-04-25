
import 'package:dipstore_project/pages/intro.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5, milliseconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => IntroPage(),
        ),
      );
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:  Text(
              'Dipstore',
              style: TextStyle(
                color: Colors.orange[900],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    );
  }
}
