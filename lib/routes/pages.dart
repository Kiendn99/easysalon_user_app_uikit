import 'package:flutter/material.dart';

import '../pages/buttons_page.dart';
import '../pages/paragraph_page.dart';
import '../pages/widgets_home_page.dart';
import 'routes.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> get pages => {
        Routes.widgetHome: (context) => WidgetsHomePage(),
        Routes.button: (context) => ButtonsPage(),
        Routes.paragraph: (context) => ParagraphPage(),
      };
}
