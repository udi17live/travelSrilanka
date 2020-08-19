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
    var _theme_data = Theme.of(context);
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
        color: _theme_data.canvasColor,
        size: 18.0,
      ),
      label: Text(
        title,
        style: TextStyle(
            color: _theme_data.canvasColor, fontWeight: FontWeight.w300),
      ),
    );
  }

  Widget singleFeedPost(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "George  Charlie",
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            TSIcons.bookmark,
                            size: 20.0,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            TSIcons.more_vertical,
                            size: 20.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(TSIcons.like),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

AppWidgets appWidgets = AppWidgets();
