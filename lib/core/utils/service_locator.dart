import 'package:chat_bot_app/core/api_services/api_services.dart';
import 'package:chat_bot_app/home/data/data_source/remote/home_remote_data_impl.dart';
import 'package:chat_bot_app/home/data/repositories/home_repo_impl.dart';
import 'package:chat_bot_app/home/domain/repositories/home_repo.dart';
import 'package:chat_bot_app/home/domain/use_cases/text_generation_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

class GetItServiceLocator {
  static void setupLocator() {
    serviceLocator.registerSingleton<ApiServices>(
      ApiServices(
        dio: Dio(),
      ),
    );
    serviceLocator.registerSingleton<HomeRepo>(
      HomeRepoImpl(
        homeRemoteData: HomeRemoteDataImpl(
          apiServices: serviceLocator.get<ApiServices>(),
        ),
      ),
    );
    serviceLocator.registerSingleton<TextGenerationUseCase>(
      TextGenerationUseCase(
        homeRepo: serviceLocator.get<HomeRepo>(),
      ),
    );
  }
}
