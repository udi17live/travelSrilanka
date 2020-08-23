import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/theme_changer.dart';

class DataSearch extends SearchDelegate<String> {
  final locations = [
    "Kandy",
    "Katukurunda",
    "Colombo",
    "Jaffna",
    "Matale",
    "Galle",
    "Anuradhapura",
    "Matara",
    "Ampara",
    "Yala",
  ];

  final recent = [
    "Anuradhapura",
    "Matara",
    "Ampara",
    "Yala",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(TSIcons.collapse),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(TSIcons.backward),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recent
        : locations
            .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(TSIcons.location),
        title: Text(suggestionsList[index]),
      ),
      itemCount: suggestionsList.length,
    );
  }

  ThemeData appBarTheme(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: theme.brightness == Brightness.dark
          ? Color(0xFF030A10)
          : Colors.white,
      primaryIconTheme: theme.primaryIconTheme
          .copyWith(color: Theme.of(context).primaryColor),
    );
  }
}
