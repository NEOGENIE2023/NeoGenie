import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';
import 'signup.dart';

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Lottie.asset(
                  'assets/images/login_signup.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 75),
          Text(
            'Welcome to NeoGenie',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'YourDesiredFont',
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                // Perform login action
                // Navigate to login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                primary: Colors.purple, // Set the button color to purple
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                // Perform signup action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                primary: Colors.purple, // Set the button color to purple
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: 160),
        ],
      ),
    );
  }
}
