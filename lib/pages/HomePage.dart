import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/widgets/widgets.dart';
import 'package:travelSrilanka/ui_components/util/AppWidgets.dart';
import 'package:travelSrilanka/ui_components/util/layoutWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);

    return Scaffold(
      appBar: layoutWidgets.appBar(context, 'Explore', true),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: _themeData.canvasColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(7.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1.0,
                            blurRadius: 10.0,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          TSIcons.few_clouds,
                          size: 70,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "23°C",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "Few Clouds",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "Colombo, WP",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SearchBarWidget(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        TitleTextWidget(
                          title: "Upcomming Trips",
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(TSIcons.foward),
                          onPressed: () {},
                          iconSize: 12,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        TitleTextWidget(
                          title: "Trending Locations",
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(TSIcons.foward),
                          onPressed: () {},
                          iconSize: 12,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        TitleTextWidget(
                          title: "Trending Cities",
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(TSIcons.foward),
                          onPressed: () {},
                          iconSize: 12,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        TitleTextWidget(
                          title: "Polular Tags",
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(TSIcons.foward),
                          onPressed: () {},
                          iconSize: 12,
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
