import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    var _theme_data = Theme.of(context);

    return Scaffold(
      appBar: layoutWidgets.appBar(context, '', true),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            right: 0.0,
                            bottom: 0.0,
                            child: SizedBox.fromSize(
                              size: Size(30, 30), // button width and height
                              child: ClipOval(
                                child: Material(
                                  color:
                                      _theme_data.primaryColor, // button color
                                  child: InkWell(
                                    splashColor:
                                        _theme_data.accentColor, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.edit,
                                          size: 20,
                                          color: _theme_data.canvasColor,
                                        ) // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Elena Reed",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "elenareed@gmail.com",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w100),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(TSIcons.user_circle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "7.5K",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text("Followers"),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: 2,
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Icon(TSIcons.user_circle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text("Posts"),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: 2,
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Icon(TSIcons.user_circle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "4k",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text("Following"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
