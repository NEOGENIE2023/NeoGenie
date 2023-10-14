import 'package:flutter/material.dart';
import 'package:flutter_application_1/Hutch.dart';
import 'Mobitel.dart';
import 'Dialog.dart';

class DataProvidersWidget extends StatelessWidget {
  const DataProvidersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a = 490.0;
    var b = 120.0;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  // Wrap the Row in a Column
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dialog1(title: '')),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/5.png",
                          height: b,
                          width: a,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mobitel(title: '')),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/8.png",
                          height: b,
                          width: a,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hutch(title: '')),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/7.png",
                          height: b,
                          width: a,
                        ),
                      ),
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

class ImagePage extends StatelessWidget {
  final String imagePath;

  ImagePage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
