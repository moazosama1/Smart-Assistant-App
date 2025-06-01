import 'package:chat_bot_app/core/utils/constant.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_appBar.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_drawer.dart';
import 'package:chat_bot_app/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  static String routeName = Constant.homeViewName;
  final GlobalKey<ScaffoldState> key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      key: key1,
      appBar: CustomAppBar.customAppBar(theme, key1),
      drawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
