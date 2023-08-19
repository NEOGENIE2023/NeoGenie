import 'package:flutter/material.dart';
import 'dbHelper.dart/MongoDBModel.dart';
import 'dbHelper.dart/mongodb.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var phonenumController = TextEditingController();

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
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Sign Up',
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      controller: phonenumController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: DropdownButtonFormField<String>(
                      validator: (value) {
                        if (value == null) {
                          return 'Please select your SIM type';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'SIM Type',
                        hintText: 'Select your SIM type',
                        prefixIcon: Icon(Icons.sim_card),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Dialog',
                          child: Text('Dialog'),
                        ),
                        DropdownMenuItem(
                          value: 'Mobitel',
                          child: Text('Mobitel'),
                        ),
                        DropdownMenuItem(
                          value: 'Hutch',
                          child: Text('Hutch'),
                        ),
                      ],
                      onChanged: (value) {
                        // Handle SIM type selection
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to the ',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.purple,
                                    decoration: TextDecoration.underline,
                                  ),
                                  // Add your logic to open terms and conditions page here
                                ),
                                TextSpan(text: ' of NeoGenie'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() && _isChecked) {
                          // Perform signup action
                          _insertData(
                            emailController.text,
                            usernameController.text,
                            passwordController.text,
                            int.parse(phonenumController.text),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.purple,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        'Are you already a member? Login',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final wavePaint = Paint()
      ..color = Colors.purple[100]!
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.25);

    final firstControlPoint = Offset(size.width * 0.25, size.height * 0.15);
    final firstEndPoint = Offset(size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(size.width * 0.75, size.height * 0.35);
    final secondEndPoint = Offset(size.width, size.height * 0.25);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Future<void> _insertData(
  String email,
  String username,
  String password,
  int phonenum,
) async {
  var _id = M.ObjectId();
  final data = MongoDBModel(
    id: _id,
    email: email,
    username: username,
    password: password,
    phonenum: phonenum,
  );
  var result = await MongoDatabase.insert(data);
}
