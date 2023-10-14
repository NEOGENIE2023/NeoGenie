import 'package:flutter/material.dart';
import 'CategoriesWidget.dart';
import 'HotDataWidget.dart';
import 'DataProvidersWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //Category Items
          CategoriesWidget(),

          //Hot Data Packs
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

          //Popular Items Widgets
          HotDataWidget(),

          //Data Providers
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

          //DataProvidersWidget
          DataProvidersWidget(),
        ],
      ),
    );
  }
}
