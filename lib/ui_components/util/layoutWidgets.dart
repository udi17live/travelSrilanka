import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/util/dataSearch.dart';

class LayoutWidgets {
  bool isDark = false;

  Widget appBar(BuildContext context, String title, bool isCOlored) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(TSIcons.search),
        onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(TSIcons.bell),
          onPressed: () {},
        ),
        // Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: Icon(TSIcons.user_circle),
        //       onPressed: () {},
        //     );
        //   },
        // ),
      ],
    );
  }
}

LayoutWidgets layoutWidgets = LayoutWidgets();
