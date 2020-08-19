import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';

class SinglePostItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
