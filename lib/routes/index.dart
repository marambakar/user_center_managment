// routes for the app

import 'package:flutter/material.dart';

import '../ui/screens/card.dart';
import '../ui/screens/login.dart';
import '../ui/screens/table.dart';
import '../ui/screens/item_design.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    // case '/':
    //   return MaterialPageRoute(builder: (_) => SplashScreen());
    // case '/home':
    //   return MaterialPageRoute(builder: (_) => HomeScreen());
    // case '/auth':
    //   return MaterialPageRoute(builder: (_) => AuthenticationScreen());
    default:
      return MaterialPageRoute(builder: (_) => card_screen());
  }}