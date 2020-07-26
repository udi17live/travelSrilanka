import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/AppWidgets.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class MyTripsPage extends StatefulWidget {
  @override
  _MyTripsPageState createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'My Trips', true),
      // body: ListView.builder(
      //     itemCount: 50,
      //     itemBuilder: (BuildContext context, int index) {
      //       return ListTile(
      //         title: Text("Hello"),
      //         leading: Container(
      //           width: 100,
      //           height: 100,
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(16.0),
      //             child: Image.network(
      //                 'https://media.timeout.com/images/105242410/630/472/image.jpg'),
      //           ),
      //         ),
      //         trailing: Icon(TSIcons.foward),
      //         subtitle: Text(
      //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ipsum metus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ipsum metus.",
      //           maxLines: 2,
      //           overflow: TextOverflow.ellipsis,
      //         ),
      //       );
      //     }),
      floatingActionButton:
          appWidgets.floatingActionButton(context, "New Trip", TSIcons.add),
    );
  }
}
