import 'package:flutter/material.dart';
import 'package:travelSrilanka/pages/CommunityPage.dart';
import 'package:travelSrilanka/pages/FavouritesPage.dart';
import 'package:travelSrilanka/pages/HomePage.dart';
import 'package:travelSrilanka/pages/MorePage.dart';
import 'package:travelSrilanka/pages/MyTripsPage.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';

class MainUi extends StatefulWidget {
  final Widget child;
  int initialPage;

  MainUi({this.child, @required this.initialPage});

  @override
  _MainUiState createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> with SingleTickerProviderStateMixin {
  TabController _tabController;
  Key key = UniqueKey();

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _nextPage(widget.initialPage);
    super.dispose();
  }

  void _nextPage(int currentTab) {
    final int newTab = _tabController.index + currentTab;
    if (newTab < 0 || newTab >= _tabController.length) return;
    _tabController.animateTo(newTab);
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomePage(),
          MyTripsPage(),
          FavouritesPage(),
          CommunityPage(),
          MorePage()
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        indicatorColor: Theme.of(context).accentColor,
        indicatorWeight: 3,
        tabs: <Widget>[
          Tab(icon: Icon(TSIcons.home, color: primaryColor)),
          Tab(icon: Icon(TSIcons.trips, color: primaryColor)),
          Tab(icon: Icon(TSIcons.favourite, color: primaryColor)),
          Tab(icon: Icon(TSIcons.community, color: primaryColor)),
          Tab(icon: Icon(TSIcons.more, color: primaryColor)),
        ],
      ),
    );
  }
}
