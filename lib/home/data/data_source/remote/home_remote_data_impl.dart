import 'package:chat_bot_app/core/api_services/api_services.dart';
import 'package:chat_bot_app/home/data/data_source/remote/home_remote_data.dart';
import 'package:chat_bot_app/home/data/models/text_generation_model/text_generation_model.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

class HomeRemoteDataImpl extends HomeRemoteData {
  final ApiServices apiServices;
  HomeRemoteDataImpl({required this.apiServices});
  @override
  Future<TextGenerationEntities> fetchTextGeneration(
      {required String message}) async {
    var request = await apiServices.post(
      endPoint: "gemini-2.0-flash:generateContent?key=",
      data: {
        "contents": [
          {
            "parts": [
              {"text": message}
            ]
          }
        ]
      },
    );
    var response = TextGenerationModel.fromJson(request, message);
    return response;
  }
}
