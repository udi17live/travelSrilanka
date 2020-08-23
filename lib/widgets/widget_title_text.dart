import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final title;

  const TitleTextWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
