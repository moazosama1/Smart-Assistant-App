import 'candidates_tokens_detail.dart';
import 'prompt_tokens_detail.dart';

class UsageMetadata {
  int? promptTokenCount;
  int? candidatesTokenCount;
  int? totalTokenCount;
  List<PromptTokensDetail>? promptTokensDetails;
  List<CandidatesTokensDetail>? candidatesTokensDetails;

  UsageMetadata({
    this.promptTokenCount,
    this.candidatesTokenCount,
    this.totalTokenCount,
    this.promptTokensDetails,
    this.candidatesTokensDetails,
  });

  factory UsageMetadata.fromJson(Map<String, dynamic> json) {
    return UsageMetadata(
      promptTokenCount: json['promptTokenCount'] as int?,
      candidatesTokenCount: json['candidatesTokenCount'] as int?,
      totalTokenCount: json['totalTokenCount'] as int?,
      promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>?)
          ?.map((e) => PromptTokensDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidatesTokensDetails: (json['candidatesTokensDetails']
              as List<dynamic>?)
          ?.map(
              (e) => CandidatesTokensDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'promptTokenCount': promptTokenCount,
      'candidatesTokenCount': candidatesTokenCount,
      'totalTokenCount': totalTokenCount,
      'promptTokensDetails':
          promptTokensDetails?.map((e) => e.toJson()).toList(),
      'candidatesTokensDetails':
          candidatesTokensDetails?.map((e) => e.toJson()).toList(),
    };
  }
}
