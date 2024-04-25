import 'package:dipstore_project/pages/signin.dart';
import 'package:dipstore_project/widgets/CustomMaterilButton.dart';
import 'package:dipstore_project/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isPasswordHidden = true;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Create Account',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
            const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Text(
              'User Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          CustomTextForm(
            hinttext: 'enter user name',
            icon: Icons.person,
            mycontroller: userName,
            obsecureTe: false,
          ),
          
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5 , top: 15),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          CustomTextForm(
            hinttext: 'enter your email',
            icon: Icons.email,
            mycontroller: email,
            obsecureTe: false,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15, bottom: 5),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          CustomTextForm(
            hinttext: 'enter the Password',
            icon: Icons.lock,
            mycontroller: password,
            obsecureTe: isPasswordHidden,
            iconButton: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
              icon: !isPasswordHidden
                  ? const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.black,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 3,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account ?  ',
                style: TextStyle(color: Colors.grey[900]),
              ),
              GestureDetector(
                onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const LoginPage()),),),
                child: const Text(
                  'Sign in',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'OR',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20 ,),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Choose the color of the border
                  width: 1, // Choose the width of the border
                ),
                borderRadius: BorderRadius.circular(
                    8), // Adjust the value for less circular border
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    child: Image.asset('lib/photos/googlelogo.png'),
                  ),
                  const Text(
                    '  Sign Up with google',
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20 , top: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Choose the color of the border
                  width: 1, // Choose the width of the border
                ),
                borderRadius: BorderRadius.circular(
                    8), // Adjust the value for less circular border
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    child: Image.asset('lib/photos/facebook.png'),
                  ),
                  const Text(
                    '  Sign Up with facebook',
                  )
                ],
              ),
            ),
          ),
          
        
        ],
      ),
    );
  }
}
