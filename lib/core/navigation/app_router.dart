import 'package:flutter/material.dart';

import '../../modules/dashboard/dashboard.dart';

import '../../modules/chat/chat.dart';

import '../../modules/freepay/freepay.dart';

///
/// AppRouter
/// Central navigation spine of Freeguy LIFE_OS
///
class AppRouter {
  static const String dashboard = '/';

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case dashboard:
        return _page(const Dashboard());

      // Future modules plug in here
      // case '/chat': return _page(const Chat());
      // case '/freepay': return _page(const Freepay());

      default:
        return _page(const Dashboard());
    }
  }

  static PageRoute _page(Widget child) {
    return MaterialPageRoute(
      builder: (_) => child,
      settings: const RouteSettings(),
    );
  }
}
