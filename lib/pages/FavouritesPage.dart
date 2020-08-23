import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
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
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            int i = index + 1;
            return ListTile(
              title: Text("Ella"),
              leading: Container(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.network(
                    'https://media.timeout.com/images/105242410/630/472/image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: Icon(
                TSIcons.favourite_filled,
                color: Colors.red,
              ),
              // subtitle: Text(
              //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ipsum metus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ipsum metus.",
              //   maxLines: 1,
              //   overflow: TextOverflow.ellipsis,
              // ),
            );
          }),
    );
  }
}
