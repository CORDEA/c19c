import 'package:freezed_annotation/freezed_annotation.dart';

part 'covid19_response.freezed.dart';
part 'covid19_response.g.dart';

@freezed
class Covid19Response with _$Covid19Response {
  factory Covid19Response(
    Covid19ErrorResponse errorInfo,
    List<Covid19ItemResponse> itemList,
  ) = _Covid19Response;

  factory Covid19Response.fromJson(Map<String, dynamic> json) =>
      _$Covid19ResponseFromJson(json);
}

@freezed
class Covid19ErrorResponse with _$Covid19ErrorResponse {
  factory Covid19ErrorResponse(
    String errorFlag,
    String? errorCode,
    String? errorMessage,
  ) = _Covid19ErrorResponse;

  factory Covid19ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$Covid19ErrorResponseFromJson(json);
}

@freezed
class Covid19ItemResponse with _$Covid19ItemResponse {
  factory Covid19ItemResponse(
    String date,
    @JsonKey(name: 'name_jp') String name,
    @JsonKey(name: 'npatients') int numberOfPatients,
  ) = _Covid19ItemResponse;

  factory Covid19ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$Covid19ItemResponseFromJson(json);
}
