import 'package:flutter/material.dart';

import 'home_page_driver.dart';
import 'tabs/home_page_tabs.dart';
import 'tabs/home_page_tabs_builder.dart';

class HomePage extends $HomePageDrivableWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: driver.numberOfTabs,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              for (var appTab in driver.appTabs) Tab(icon: Icon(appTab.iconData)),
            ],
          ),
          title: Text(driver.title),
        ),
        body: TabBarView(
          children: [
            for (var appTab in driver.appTabs) HomePageTabBuilder.tabForType(appTab),
          ],
        ),
      ),
    );
  }

  @override
  $HomePageDriverProvider get driverProvider => $HomePageDriverProvider();
}