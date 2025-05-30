import 'package:chat_bot_app/core/utils/route_app.dart';
import 'package:chat_bot_app/core/utils/theme_app.dart';
import 'package:chat_bot_app/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp().themeDark,
      home: SplashView(),
      routes: RouteApp.routesApp,
      initialRoute: SplashView.routeName,
    );
  }
}
