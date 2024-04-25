import 'package:dipstore_project/pages/home.dart';
import 'package:dipstore_project/pages/signin.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset('lib/photos/image.png'),
          const Center(
            child: Text(
              'Welcome to Dipstore',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              '     Embark on your electronic shopping \n       journey with Dipstore\'s seamless \n  onboarding experience tailored just for \n                                 you.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Adjust the radius value to change the button's circularity
                      side: const BorderSide(color: Colors.purple),
                    ),
                    backgroundColor:
                        Colors.white, // Set the background color to white
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20), // Adjust padding as needed
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: ((context) => const HomePage()),),);
                  },
                  child: const Text(
                    '          Guest          ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                      height: 2,
                    ),
                  ),
                  // height: 40, // You can set height using padding or SizedBox
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Adjust the radius value to change the button's circularity
                      side: const BorderSide(color: Colors.black),
                    ),
                    backgroundColor:
                        Colors.black, // Set the background color to black
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20), // Adjust padding as needed
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: ((context) => const LoginPage()),),);
                  },
                  child: const Text(
                    '        Sign Up       ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set the text color to white
                    ),
                  ),
                  // height: 40, // You can set height using padding or SizedBox
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
