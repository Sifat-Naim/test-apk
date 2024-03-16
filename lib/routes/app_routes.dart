import 'package:flutter/material.dart';
import '../presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import '../presentation/iphone_14_15_pro_one_tab_container_screen/iphone_14_15_pro_one_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String iphone1415ProOnePage = '/iphone_14_15_pro_one_page';

  static const String iphone1415ProOneTabContainerScreen =
      '/iphone_14_15_pro_one_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxOneScreen: (context) => Iphone1415ProMaxOneScreen(),
    iphone1415ProOneTabContainerScreen: (context) =>
        Iphone1415ProOneTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
