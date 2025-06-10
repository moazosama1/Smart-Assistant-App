import 'package:chat_bot_app/core/utils/route_app.dart';
import 'package:chat_bot_app/core/utils/service_locator.dart';
import 'package:chat_bot_app/core/utils/theme_app.dart';
import 'package:chat_bot_app/home/data/data_source/store/store_data.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetItServiceLocator.setupLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(TextGenerationEntitiesAdapter());
  await StoreData.openBox();
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
