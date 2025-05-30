import 'package:chat_bot_app/home/presentation/home_view.dart';
import 'package:chat_bot_app/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';

class RouteApp {
  static Map<String, WidgetBuilder> routesApp = {
    HomeView.routeName: (context) => HomeView(),
    SplashView.routeName: (context) => SplashView(),
  };
}
