import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'More', true),
      body: Center(
        child: Text("More Page"),
      ),
    );
  }
}
