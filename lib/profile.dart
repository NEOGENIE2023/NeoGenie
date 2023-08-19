import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
