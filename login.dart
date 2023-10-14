import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'bottom_bar.dart';
import 'dbHelper.dart/constant.dart';
import 'signup.dart';
import 'number.dart';

class LoginPage extends StatelessWidget {
  var usernameController = new TextEditingController();
  var passwordController = new TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  Future<void> _insertData(
      BuildContext context, String username, String password) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Please Wait'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Logging in...'),
            ],
          ),
        );
      },
    );

    var db, usercollection;
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    usercollection = db.collection(USER_COLLECTION);
    final user = await usercollection.findOne(where.eq('Username', username));

    final storedUsername = user['Username'];
    final storedPassword = user['Password'];
    final storedNumber = user['phonenum'];
    final storedemail = user['email'];

    await Future.delayed(
        Duration(seconds: 2)); // Simulating a delay for demonstration purposes

    if (password == storedPassword && username == storedUsername) {
      // Login success
      numbersave(storedNumber);
      usernamesave(storedUsername);
      emailsave(storedemail);
      Navigator.pop(context); // Close the loading dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Successful'),
          content: Text('You have successfully logged in.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the success dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomBar()),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Login failed
      Navigator.pop(context); // Close the loading dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Error'),
          content: Text('Incorrect username or password.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'YourDesiredFont',
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    onSaved: (username) {},
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    onSaved: (password) {},
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      _insertData(
                        context,
                        usernameController.text,
                        passwordController.text,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      primary: Colors.purple,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Are you new to NeoGenie? Sign Up',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
