import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/widgets/widgets.dart';

class CommunityFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            int i = index + 1;
            return SinglePostItemWidget();
          }),
      floatingActionButton: FloatingActionButtonWidget(
        icon: TSIcons.add,
        title: 'New Post',
      ),
    );
  }
}
