import 'package:class_practice/screens/home.dart';
import 'package:class_practice/widgets/myButton.dart';
import 'package:class_practice/widgets/my_textField.dart';
import 'package:class_practice/widgets/squareTile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text field controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in methode
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
          
                const SizedBox(
                  height: 30,
                ),
                // Welcome back, you've been missed!
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
          
                const SizedBox(
                  height: 30,
                ),
                // Username textFiled
                MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false),
          
                const SizedBox(
                  height: 10,
                ),
                // Password textFiled
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),
          
                const SizedBox(
                  height: 10,
                ),
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(
                  height: 25,
                ),
                // Sign in button
                MyButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()),);
                  },
                  buttonName: 'Sign In',
                ),
          
                const SizedBox(
                  height: 30,
                ),
                // or Continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(color: Colors.grey[700], fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // google + facebook sign in buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'images/google.png'),
          
                    SizedBox(
                      width: 20,
                    ),
          
                    // facebook button
                    SquareTile(imagePath: 'images/facebook.png'),
                  ],
                ),
          
                const SizedBox(
                  height: 30,
                ),
                // Don't have account? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Sign Up Now',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
