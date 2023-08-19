import 'package:flutter/material.dart';
import 'CategoriesWidget.dart';
import 'HotDataWidget.dart';
import 'DataProvidersWidget.dart';
//import 'name.dart';
import 'number.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PersonalDetailsCard(),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          CategoriesWidget(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Hot Data Packs",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          HotDataWidget(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Data Providers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          DataProvidersWidget(),
        ],
      ),
    );
  }
}

class PersonalDetailsCard extends StatefulWidget {
  const PersonalDetailsCard({Key? key}) : super(key: key);

  @override
  _PersonalDetailsCardState createState() => _PersonalDetailsCardState();
}

class _PersonalDetailsCardState extends State<PersonalDetailsCard> {
  String _profileImagePath =
      'assets/images/profile_image.png'; // Initial image path
  bool _isDefaultImage = true;

  void _changeAvatar() {
    setState(() {
      _isDefaultImage = !_isDefaultImage;
      _profileImagePath = _isDefaultImage
          ? 'assets/images/profile_image.png'
          : 'assets/images/new_profile_image.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 17),
        ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Card(
            margin: EdgeInsets.all(20),
            child: SizedBox(
              height: 180,
              width: 400,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: _changeAvatar,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(_profileImagePath),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.camera_alt,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                            usernamesend(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text(
                            emailsend(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text(
                            numbersend(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
