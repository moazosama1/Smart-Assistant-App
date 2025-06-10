import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

import 'candidate.dart';
import 'usage_metadata.dart';

class TextGenerationModel extends TextGenerationEntities {
  List<Candidate>? candidates;
  UsageMetadata? usageMetadata;
  String? modelVersion;
  String? requestMessage;
  String? responseId;
  TextGenerationModel({
    this.candidates,
    this.usageMetadata,
    this.modelVersion,
    this.responseId,
    this.requestMessage,
  }) : super(
          responseText: candidates?.first.content?.parts?.first.text ?? "",
          requestText: requestMessage ?? "",
          isUser: false
        );

  factory TextGenerationModel.fromJson(
      Map<String, dynamic> json, String requestMessage) {
    return TextGenerationModel(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageMetadata: json['usageMetadata'] == null
          ? null
          : UsageMetadata.fromJson(
              json['usageMetadata'] as Map<String, dynamic>),
      modelVersion: json['modelVersion'] as String?,
      responseId: json['responseId'] as String?,
      requestMessage: requestMessage,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'candidates': candidates?.map((e) => e.toJson()).toList(),
      'usageMetadata': usageMetadata?.toJson(),
      'modelVersion': modelVersion,
      'responseId': responseId,
    };
  }
}
