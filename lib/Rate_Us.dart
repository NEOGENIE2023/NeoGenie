import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class Rate_Us extends StatefulWidget {
  const Rate_Us({Key? key}) : super(key: key);

  @override
  _Rate_UsState createState() => _Rate_UsState();
}

class _Rate_UsState extends State<Rate_Us> {
  int ratings = 0;
  int maxRatings = 5;

  void handleNotificationIconPress() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('App Ratings'),
          content: SizedBox(
            width: MediaQuery.of(context).size.width *
                0.5, // Adjust the width as needed
            height: MediaQuery.of(context).size.height *
                0.35, // Adjust the height as needed
            child: Column(
              children: [
                Lottie.asset(
                  'assets/images/notification.json', // Replace with your Lottie animation file
                  repeat: true,
                  reverse: false,
                  animate: true,
                ),
                SizedBox(height: 20),
                Text(
                    'The app has received $ratings out of $maxRatings ratings.'),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate Us'),
        backgroundColor: Colors.purple,
        actions: [
          Padding(
            padding:
                EdgeInsets.only(right: 16.0), // Add padding to the right corner
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: handleNotificationIconPress,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Lottie.asset(
              'assets/images/rating.json', // Replace with your Lottie animation file
              repeat: true,
              reverse: false,
              animate: true,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Rate Our App',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'We value your feedback! Please rate our app.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(maxRatings, (index) {
              if (index < ratings) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      ratings = index + 1;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                );
              } else {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      ratings = index + 1;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 30,
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
