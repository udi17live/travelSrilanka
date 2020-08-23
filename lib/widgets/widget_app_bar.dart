import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:travelSrilanka/ui_components/icons/TSIcons.dart';
import 'package:travelSrilanka/util/dataSearch.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final TabController tabController;
  final List<Tab> tab_list;

  const AppBarWidget(
      {Key key,
      @required this.title,
      @required this.tabController,
      @required this.tab_list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(TSIcons.search),
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          },
        ),
        bottom: tabController == null
            ? PreferredSize(
                preferredSize: Size.zero,
                child: Container(),
              )
            : TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: new BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.blueAccent,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                tabs: tab_list,
                controller: tabController,
              ),
        actions: <Widget>[
          IconButton(
            icon: Icon(TSIcons.bell),
            onPressed: () {},
          ),
          // Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: Icon(TSIcons.user_circle),
          //       onPressed: () {},
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
