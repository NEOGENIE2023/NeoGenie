import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final List<String> slideBarNames = [
    'Name 1',
    'Name 2',
    'Name 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (String name in slideBarNames)
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        color: Colors.grey.shade300,
                      ),
                      child: Text(name),
                    ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FloatingDashboardBlock(
                      color: Colors.white60,
                      title: 'Dialog',
                      textColor: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen('Dialog'),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20.0),
                    FloatingDashboardBlock(
                      color: Colors.blue,
                      title: 'Mobitel',
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen('Mobitel'),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20.0),
                    FloatingDashboardBlock(
                      color: Colors.orange,
                      title: 'Hutch',
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen('Hutch'),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingDashboardBlock extends StatelessWidget {
  final Color color;
  final String title;
  final Color textColor;
  final VoidCallback onPressed;

  FloatingDashboardBlock({
    required this.color,
    required this.title,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String blockTitle;

  DetailScreen(this.blockTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blockTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'This is the detail screen for $blockTitle',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
