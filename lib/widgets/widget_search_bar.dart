import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/util/dataSearch.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
