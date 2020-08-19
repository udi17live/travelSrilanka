import 'package:flutter/material.dart';
import 'package:travelSrilanka/pages/CommunityPages/CommunityFeedPage.dart';
import 'package:travelSrilanka/pages/CommunityPages/CommunityProfilePage.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/AppWidgets.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(
      text: "Feed",
    ),
    Tab(
      text: "Profile",
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'Community', true,
          tabController: _tabController, tab_list: tabs),
      // body: TabBarView(
      //     controller: _tabController,
      //     children: tabs.map((Tab tab) {
      //       return new Center(
      //           child: new Text(
      //         tab.text,
      //         style: new TextStyle(fontSize: 20.0),
      //       ));
      //     }).toList()),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[CommunityFeedPage(), CommunityProfilePage()]),
    );
  }
}
