import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'ai.dart';
import 'home.dart';
import 'profile.dart';
import 'history.dart';
import 'NavBar.dart';
import 'menu_details.dart';
import 'Rate_Us.dart';
import 'Contact_Us.dart';
import 'Help_and_feedback.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    AIRecommendation(),
    History(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("NeoGenie");

  @override
  Widget build(BuildContext context) {
    //Creating the buildItem method
    PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
          value: item,
          child: Row(
            children: [
              Icon(
                item.icon,
                color: Colors.black,
                size: 20,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(item.text),
            ],
          ),
        );

    void onSelected(BuildContext context, MenuItem item) {
      switch (item) {
        case MenuDetails.itemRates:
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Rate_Us()),
          );
          break;

        case MenuDetails.itemContact:
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Contact_Us()),
          );
          break;

        case MenuDetails.itemHelp:
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HelpAndFeedback()),
          );
          break;
      }
    }

    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('NeoGenie'),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: DataSearch(),
              );
            },
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuDetails.itemsFirst.map(buildItem).toList(),
            ],
          )
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 150),
        color: Colors.purple,
        items: const [
          Icon(
            FluentSystemIcons.ic_fluent_home_regular,
            color: Colors.white,
            semanticLabel: "Home",
          ),
          Icon(
            FluentSystemIcons.ic_fluent_recommended_regular,
            color: Colors.white,
            semanticLabel: "AI",
          ),
          Icon(
            FluentSystemIcons.ic_fluent_history_regular,
            color: Colors.white,
            semanticLabel: "History",
          ),
          Icon(
            FluentSystemIcons.ic_fluent_person_regular,
            color: Colors.white,
            semanticLabel: "Profile",
          ),
        ],
        onTap: _onItemTapped, // New: Call _onItemTapped when an item is tapped
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final dataProviders = [
    'Dialog',
    'Mobitel',
    'Hutch',
  ];

  final recentSearches = [
    'Dialog',
    'Mobitel',
    'Hutch',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, 'No searches are found');
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      child: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearches
        : dataProviders.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.sim_card),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
