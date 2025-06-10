import 'package:chat_bot_app/core/utils/service_locator.dart';
import 'package:chat_bot_app/home/domain/use_cases/text_generation_use_case.dart';
import 'package:chat_bot_app/home/presentation/view/chat_view.dart';
import 'package:chat_bot_app/home/presentation/view/home_view.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/chat_text_generation_cubit.dart';
import 'package:chat_bot_app/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteApp {
  static Map<String, WidgetBuilder> routesApp = {
    HomeView.routeName: (context) => HomeView(),
    SplashView.routeName: (context) => SplashView(),
    ChatView.routeName: (context) => BlocProvider(
          create: (context) => ChatTextGenerationCubit(
            textGenerationUseCase: serviceLocator.get<TextGenerationUseCase>(),
          ),
          child: ChatView(),
        ),
  };
}
