import 'package:flutter/material.dart';

import '../../modules/dashboard/dashboard.dart';
import '../../modules/chat/chat.dart';
import '../../modules/freepay/freepay.dart';
import '../../modules/moment/moment.dart';

///
/// AppRouter
/// Central navigation spine of Freeguy LIFE_OS
///
class AppRouter {
  static const String dashboard = '/';
  static const String chat = '/chat';
  static const String freepay = '/freepay';
  static const String moment = '/moment';

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case dashboard:
        return _page(const Dashboard());

      case chat:
        return _page(const Chat());

      case freepay:
        return _page(const Freepay());

      case moment:
        return _page(const Moment());

      default:
        return _page(const Dashboard());
    }
  }

  static PageRoute _page(Widget child) {
    return MaterialPageRoute(
      builder: (_) => child,
    );
  }
}
