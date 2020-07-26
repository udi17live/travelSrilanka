import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/AppWidgets.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'Community', true),
      body: Center(
        child: Text("Community Page"),
      ),
      floatingActionButton:
          appWidgets.floatingActionButton(context, "New Post", TSIcons.add),
    );
  }
}
