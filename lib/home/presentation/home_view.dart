import 'package:chat_bot_app/core/utils/constant.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_appBar.dart';
import 'package:chat_bot_app/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = Constant.homeViewName;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar.customAppBar(theme),
      body: HomeViewBody(),
    );
  }
}
