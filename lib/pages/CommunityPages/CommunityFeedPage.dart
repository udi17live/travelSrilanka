import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/AppWidgets.dart';

class CommunityFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              int i = index + 1;
              return appWidgets.singleFeedPost(context);
            }),
        floatingActionButton:
            appWidgets.floatingActionButton(context, "New Post", TSIcons.add));
  }
}
