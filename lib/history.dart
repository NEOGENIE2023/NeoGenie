import 'package:flutter/material.dart';
import 'package:data_usage/data_usage.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isHistoryLoaded = false;
  bool _isButtonVisible = true;

  void _loadHistory() {
    setState(() {
      _isHistoryLoaded = true;
      _isButtonVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isButtonVisible)
            Expanded(
              flex: 2,
              child: AIAnimation(),
            ),
          if (_isButtonVisible)
            Expanded(
              flex: 1,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    _loadHistory();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Load History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (_isHistoryLoaded)
            Expanded(
              flex: 1,
              child: History(),
            ),
        ],
      ),
    );
  }
}

class AIAnimation extends StatefulWidget {
  @override
  _AIAnimationState createState() => _AIAnimationState();
}

class _AIAnimationState extends State<AIAnimation> {
  double _animationHeight = 50.0;
  bool _isAnimationVisible = true;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(
        Duration(milliseconds: 30)); // Delay to simulate AI processing
    setState(() {
      _animationHeight = 320.0; // Adjust the height based on your animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_isAnimationVisible)
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: _animationHeight,
            color: Theme.of(context).primaryColor,
            child: Image.asset(
              'assets/images/767.jpg', // Replace with the path to your image
              width: 2000, // Adjust the width of the image
              height: 900, // Adjust the height of the image
            ),
          ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              'Over the last month, data usage witnessed a noticeable upswing, indicative of heightened online engagement and expanded digital interactions for work, leisure, and communication. This trend underscores the importance of maintaining reliable connectivity and data management practices moving forward',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class History extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<History> {
  List<DataUsageModel> _dataUsage = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
    //check();
  }

  Future<void> initPlatformState() async {
    List<DataUsageModel> dataUsage = [];
    //print("A2");
    try {
      print(await DataUsage.init());
      dataUsage = await DataUsage.dataUsageAndroid(
        withAppIcon: true,
        dataUsageType: DataUsageType.wifi,
      );
      print(dataUsage);
    } catch (e) {
      print(e.toString());
    }

    if (!mounted) return;

    setState(() {
      _dataUsage = dataUsage;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Android(
          key: UniqueKey(),
          dataUsage: _dataUsage,
          size: size,
        ),
      ),
    );
  }
}

class Android extends StatelessWidget {
  const Android({
    required Key key,
    required List<DataUsageModel> dataUsage,
    required this.size,
  })  : _dataUsage = dataUsage,
        super(key: key);

  final List<DataUsageModel> _dataUsage;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (_dataUsage != null)
          for (var item in _dataUsage) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  if (item.appIconBytes != null)
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: MemoryImage(item.appIconBytes!),
                        ),
                      ),
                    ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.7,
                        child: Text(
                          '${item.appName}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: size.width * 0.7,
                        child: Text(
                          '${item.packageName}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            'Received: ${(item.received! / 1048576).toStringAsFixed(4)}MB  ',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 13),
                          ),
                          Text(
                            'Sent: ${(item.sent! / 1048576).toStringAsFixed(4)}MB',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider()
          ]
      ],
    );
  }
}
