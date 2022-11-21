// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_driver.dart';

// **************************************************************************
// WidgetDriverGenerator
// **************************************************************************

class _$TestHomePageDriver extends TestDriver implements HomePageDriver {
  @override
  int get numberOfTabs => 2;

  @override
  List<AppTabType> get appTabs =>
      [AppTabType.consumption, AppTabType.community];

  @override
  String title = "Widget Driver - Coffee Demo";
}

class $HomePageDriverProvider extends WidgetDriverProvider<HomePageDriver> {
  @override
  HomePageDriver buildDriver() {
    return HomePageDriver();
  }

  @override
  HomePageDriver buildTestDriver() {
    return _$TestHomePageDriver();
  }
}

typedef $HomePageDrivableWidget
    = DrivableWidget<HomePageDriver, $HomePageDriverProvider>;