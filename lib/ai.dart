import 'package:flutter/material.dart';
import 'package:data_usage/data_usage.dart';
import 'package:flutter_application_1/number.dart';
//import 'package:mongo_dart/mongo_dart.dart';
import 'dart:async';
import 'mongo.dart';
import 'number.dart';
import 'mongo.dart';
import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;

class AIRecommendation extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<AIRecommendation> {
  bool isLoading = false; // Add this variable

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  void _hideLoadingDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  List<DataUsageModel> _dataUsage = [];

  PieChartData pieChartData = PieChartData(
    sections: [], // Initialize with empty data
    sectionsSpace: 0,
    centerSpaceRadius: 60,
  );

  @override
  void initState() {
    super.initState();
    //initPlatformState();
    //servercall();
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
      //print(_dataUsage[2].received);

      if (_dataUsage != null) {
        var youtube;
        var telegram;
        var whatsapp;
        var webusage;
        var facebookusage;
        var totalusage = 0.0;
        var tiktokusage;
        int phonenumm;

        for (var item in _dataUsage) {
          if (item.packageName == "com.google.android.youtube") {
            youtube = (item.received! / 1048576) + (item.sent! / 1048576);
          } else if (item.packageName == "org.telegram.messenger") {
            telegram = (item.received! / 1048576) + (item.sent! / 1048576);
          } else if (item.packageName == "com.whatsapp") {
            whatsapp = (item.received! / 1048576) + (item.sent! / 1048576);
          } else if ((item.packageName == "com.android.chrome") ||
              (item.packageName == "com.microsoft.emmx") ||
              (item.packageName == "org.mozilla.firefox") ||
              (item.packageName == "com.opera.mini.native") ||
              (item.packageName == "com.google.android.googlequicksearchbox")) {
            webusage = (item.received! / 1048576) + (item.sent! / 1048576);
          } else if ((item.packageName == "com.facebook.mlite") ||
              (item.packageName == "com.facebook.lite") ||
              (item.packageName == "com.facebook.katana")) {
            facebookusage = (item.received! / 1048576) + (item.sent! / 1048576);
          } else if ((item.packageName == "com.zhiliaoapp.musically")) {
            tiktokusage = (item.received! / 1048576) + (item.sent! / 1048576);
          } else {
            if (item.received != null) {
              totalusage = totalusage +
                  ((item.received! / 1048576) + (item.sent! / 1048576));
            }
          }
        }
        youtube = (youtube / 1024);
        telegram = (telegram / 1024);
        whatsapp = (whatsapp / 1024);
        webusage = (webusage / 1024);
        facebookusage = (facebookusage / 1024);
        tiktokusage = (tiktokusage / 1024);
        totalusage = (totalusage / 1024);
        phonenumm = int.parse(numbersend());
        if (phonenumm != null) {
          _insertData(facebookusage, youtube, whatsapp, telegram, tiktokusage,
              webusage, totalusage, phonenumm);
        } else {
          print("please loggin first");
        }
      }
    });
  }

  Widget buildModernPieChart(
      double a, double b, double c, double d, double e, double f) {
    List<PieChartSectionData> getSections() {
      return [
        PieChartSectionData(
          value: a,
          color: const Color(0xFF39ADDB),
        ),
        PieChartSectionData(
          value: b,
          //color: Colors.purple,
          color: const Color(0xFF9A39DB),
        ),
        PieChartSectionData(
          value: c,
          //color: Colors.orange,
          color: const Color(0xFFFF5F1F),
        ),
        PieChartSectionData(
          value: d,
          //color: Colors.red,
          color: const Color(0xFFe94f58),
        ),
        PieChartSectionData(
          value: e,
          //color: Colors.yellow,
          color: const Color(0xFFd4ff32),
        ),
        PieChartSectionData(
          value: f,
          //color: Colors.green,
          color: const Color(0xFFabff32),
        ),
      ];
    }

    List<String> sectionNames = [
      'Facebook',
      'Whatsapp',
      'Youtube',
      'Telegram',
      'Tiktok',
      'Web'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 270,
          padding: EdgeInsets.all(10),
          child: PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 70,
              sections: getSections(),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              getSections().length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  '${sectionNames[index]}'
                  '\n${getSections()[index].value.toStringAsFixed(2)} GB',
                  style: TextStyle(
                    color: getSections()[index].color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _insertData(
    double facebook,
    double youtube,
    double whatsapp,
    double telegram,
    double tiktok,
    double web,
    double total,
    int phonenum,
  ) async {
    final data = MongoDBModel1(
      Facebook_usage: facebook,
      Youtube_usage: youtube,
      Whatsapp_usage: whatsapp,
      Telegram_usage: telegram,
      Tiktok_usage: tiktok,
      Web_browsing_usage: web,
      Total_usage: total,
      phone_number: phonenum,
    );
    var result = await MongoDatabase1.insert(data);
    print(facebook);
  }

  var facebook = 'Facebook';
  var whatsapp = 'Whatsapp';
  var youtube = 'Youtube';
  var telegram = 'Telegram';
  var tiktok = 'Tiktok';
  var webBrowsing = 'Web browsing';
  var totalUsage = 'Total usage';
  var bestPackage = 'Best package';
  var p = 1.0;
  var q = 1.0;
  var r = 1.0;
  var s = 1.0;
  var t = 1.0;
  var u = 1.0;
  var v = 1.0;

  void updateText(double a, double b, double c, double d, double e, double f,
      double g, String h) {
    setState(() {});
    facebook = a.toString();
    whatsapp = b.toString();
    youtube = c.toString();
    telegram = d.toString();
    tiktok = e.toString();
    webBrowsing = f.toString();
    totalUsage = g.toString();
    bestPackage = h.toString();
    p = double.parse(a.toStringAsFixed(2));
    q = double.parse(b.toStringAsFixed(2));
    r = double.parse(c.toStringAsFixed(2));
    s = double.parse(d.toStringAsFixed(2));
    t = double.parse(e.toStringAsFixed(2));
    u = double.parse(f.toStringAsFixed(2));
    v = double.parse(g.toStringAsFixed(2));
  }

  void updateText1() {
    setState(() {});
    facebook;
    whatsapp;
    youtube;
    telegram;
    tiktok;
    webBrowsing;
    totalUsage;
    bestPackage;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'AI Generator',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 144, 16, 179),
              ),
            ),
            SizedBox(height: 20),
            buildModernPieChart(p, q, r, s, t, u),
            SizedBox(height: 20),
            Card(
              elevation: 4, // Add elevation for a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Container(
                padding: EdgeInsets.zero, // Set padding to zero
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      _buildLabelAndTextBox('Facebook', facebook),
                      _buildLabelAndTextBox('Whatsapp', whatsapp),
                      _buildLabelAndTextBox('Youtube', youtube),
                      _buildLabelAndTextBox('Telegram', telegram),
                      _buildLabelAndTextBox('Tiktok', tiktok),
                      _buildLabelAndTextBox('Web browsing', webBrowsing),
                      _buildLabelAndTextBox('Total usage', totalUsage),
                      _buildLabelAndTextBox('Best package', bestPackage),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (numbersend() == "NeoGenie") {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Message!'),
                                      content: Text(
                                          'Pleas Login befor AI Generation'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                setState(() {
                                  isLoading = true; // Show loading animation
                                });
                                _showLoadingDialog(context);
                                initPlatformState();
                                await Future.delayed(Duration(seconds: 8));
                                //performServerCall();
                                if (getcount() < 8) {
                                  for (var i = 0; i > 8; i++) {
                                    initPlatformState();
                                  }
                                }
                                servercall();
                                await Future.delayed(Duration(seconds: 25));
                                _hideLoadingDialog(context);
                                setState(() {
                                  isLoading = false; // Hide loading animation
                                });
                                updateText1();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Color.fromARGB(255, 144, 16, 179),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              'AI',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelAndTextBox(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80, // Adjust the width as needed for your labels
            child: Text(
              '$label: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              enabled: false, // Make the TextField non-editable
              controller: TextEditingController(text: value),
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>> sendData(String url, int number) async {
    try {
      // Create a Map object with the number
      Map<String, dynamic> data = {'number': number};

      // Convert the data to JSON
      String jsonData = jsonEncode(data);

      // Make the HTTP POST request
      http.Response response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonData,
      );

      if (response.statusCode == 200) {
        // Request successful, parse the JSON response
        return json.decode(response.body);
      } else {
        // Request failed, throw an exception or handle the error
        throw Exception(
            'HTTP request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any errors that occurred during the HTTP request
      throw Exception('Error occurred during HTTP request: $e');
    }
  }

  void servercall() {
    String url = 'http://192.168.43.26:5000'; // Replace with your desired URL
    int numberToSend =
        int.parse(numbersend()); // Replace with the number you want to send

    sendData(url, numberToSend).then((response) {
      // Access the response data
      final pakage = response["pakage"];
      final facebook = response["Facebook"];
      final whatsapp = response["Whatsapp"];
      final Youtube = response["Youtube"];
      final Telegram = response["Telegram"];
      final Tiktok = response["Tiktok"];
      final Web_browsing = response["Web browsing"];
      final Total = response["Total"];

      print('Package: $pakage');
      print('Facebook: $facebook');
      print('Whatsapp: $whatsapp');
      print(getcount());
      updateText(facebook, whatsapp, Youtube, Telegram, Tiktok, Web_browsing,
          Total, pakage);
    }).catchError((error) {
      print('Error occurred: $error');
    });
  }
}
