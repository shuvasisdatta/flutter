import 'package:flutter/material.dart';
import 'package:state_management/src/ui/user/index.dart';

import 'src/ui/error.dart';
import 'src/ui/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => Home(title: 'State Management UI'),
        );
      // case '/user':
      //   final args = settings.arguments as User;
      //   return MaterialPageRoute(
      //     builder: (_) => UserDetails(user: args),
      //   );
      case '/post':
        return MaterialPageRoute(
          builder: (_) => PostList(),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return ErrorPage();
    });
  }
}
