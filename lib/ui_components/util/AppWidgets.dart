import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/util/dataSearch.dart';

class AppWidgets {
  Widget searchBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        autofocus: false,
        onTap: () {
          showSearch(context: context, delegate: DataSearch());
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: 'Search Destination...',
            filled: true,
            suffixIcon: IconButton(
                icon: Icon(TSIcons.search),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })),
      ),
    );
  }

  Widget textTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget floatingActionButton(
      BuildContext context, String title, IconData icon) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => LocationTemplate()),
        // );
      },
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0))),
      icon: Icon(
        icon,
        color: Colors.white,
        size: 18.0,
      ),
      label: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
      ),
    );
  }
}

AppWidgets appWidgets = AppWidgets();
