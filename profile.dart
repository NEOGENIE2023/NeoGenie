import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DataPlans extends StatelessWidget {
  const DataPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Mobitel Data Packages', // Subheading
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One-Shot Unlimited - 7 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 289',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One-Shot Unlimited - 30 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 989',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Work & Play - 7 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 280',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.snapchat,
                        size: 22,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Work & Play - 30 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 990',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Instant Messaging Unlimited',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 70',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop TikTok - 7 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 115',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '9IN1 Non-Stop Lokka',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 520',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Work & Play - 7 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 280',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.snapchat,
                        size: 22,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop TikTok - 30 Day',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 385',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobitel Tripplle Buddy',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 444',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Network Unlimited',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 145',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Youtube Unlimited',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rs. 360',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              12), // Adding some spacing between the text and the icon
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),

          //Dialog
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Dialog Data Packages', // Subheading
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 207, 8, 174),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fun Blaster 129',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 129',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fun Blaster 130',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 130',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '5 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '14 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Youtube',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 327',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.snapchat,
                        size: 22,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FB/Whatsapp & youtube',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 447',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fun Blaster 217',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 217',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '20 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fun Blaster 297',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 297',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '15 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '995 Internet Card',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 995',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '15 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1195 Internet Card',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1195',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '20 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1595 Internet Card',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1595',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1995 Internet Card',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1995',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '50 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2995 Internet Card',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 2995',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '100 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4G Work and Learn',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 654',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              15), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '12 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4G Work and Learn',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1307',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Video Conferencing',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 218',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '25 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Video Conferencing',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 706',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Netflix',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1490 + tax',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Netflix',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1990 + tax',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 207, 8, 174), // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Unlimited',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days (one time)',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Hutch Data Packages', // Subheading
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UNLIMITED ANY-NETWORK CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 888',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop + 30 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ANY NETWORK UNLIMITED CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 749',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop + 3 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ANY NETWORK UNLIMITED CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1499',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Anytime Data',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UNLIMITED ANY-NETWORK CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 288',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.facebook,
                        size: 22,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop + free 7 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ANY NETWORK UNLIMITED CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1199',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop + Free 6GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '60 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ANY NETWORK UNLIMITED CALLS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 1575',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop + 9 GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '90 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Super Combo',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 479',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NON - STOP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 479',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop TikTok',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 353',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Tiktok',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 89',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '7 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NON-STOP YOUTUBE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 435',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Free 3GB',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NON-STOP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 361',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              15), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Non-Stop Super Combo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 479',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NON-STOP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Rs. 479',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height:
                              13), // Adding some spacing between the text and the icon
                      Icon(
                        Icons.tiktok,
                        size: 22,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _openDialPad();

                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Customize button color
                        textStyle: TextStyle(
                            color: Colors.white), // Customize text color
                      ),
                      child: Text('Activate!'),
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      'Non-Stop Usage',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                        height:
                            8), // Adding some spacing between the right-aligned texts
                    Text(
                      '30 Days',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _openDialPad() async {
  const phoneNumber =
      'tel:+1234567890'; // Replace with the desired phone number
  if (await canLaunch(phoneNumber)) {
    await launch(phoneNumber);
  } else {
    // Handle error if the dialer cannot be launched
    print('Could not launch $phoneNumber');
  }
}
