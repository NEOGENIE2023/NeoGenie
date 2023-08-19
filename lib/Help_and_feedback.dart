import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

class HelpAndFeedback extends StatefulWidget {
  const HelpAndFeedback({Key? key}) : super(key: key);

  @override
  _HelpAndFeedbackState createState() => _HelpAndFeedbackState();
}

class _HelpAndFeedbackState extends State<HelpAndFeedback> {
  Future<void> _openGoogleForm() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSf1dtzBG1fM3WZHkVRd4XGSgXn6SaXaHLL7gp6xF6Z2fl5Fig/viewform?usp=pp_url';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Feedback'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Lottie.asset(
                'assets/images/hello.json', // Replace with your animation file
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openGoogleForm,
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Open Google Form',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
