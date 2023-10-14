import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 138, 3, 115),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset(
              'assets/images/your_animation.json', // Replace with the path to your Lottie animation file
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
            ContactInfoWidget(),
          ],
        ),
      ),
    );
  }
}

class ContactInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Contact Information',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email: NeoGeni@email.com'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone: +123 456 7890'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('NeoGeni\n,wakwella road\n,Galle.'),
        ),
      ],
    );
  }
}
