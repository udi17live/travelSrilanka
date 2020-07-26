import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'Favourites', true),
      body: Center(
        child: Text("Favourites Page"),
      ),
    );
  }
}
