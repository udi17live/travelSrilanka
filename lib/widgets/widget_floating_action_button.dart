import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const FloatingActionButtonWidget(
      {Key key, @required this.icon, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
