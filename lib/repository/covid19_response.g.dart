// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid19_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Covid19Response _$_$_Covid19ResponseFromJson(Map<String, dynamic> json) {
  return _$_Covid19Response(
    Covid19ErrorResponse.fromJson(json['errorInfo'] as Map<String, dynamic>),
    (json['itemList'] as List<dynamic>)
        .map((e) => Covid19ItemResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_Covid19ResponseToJson(_$_Covid19Response instance) =>
    <String, dynamic>{
      'errorInfo': instance.errorInfo,
      'itemList': instance.itemList,
    };

_$_Covid19ErrorResponse _$_$_Covid19ErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _$_Covid19ErrorResponse(
    json['errorFlag'] as String,
    json['errorCode'] as String?,
    json['errorMessage'] as String?,
  );
}

Map<String, dynamic> _$_$_Covid19ErrorResponseToJson(
        _$_Covid19ErrorResponse instance) =>
    <String, dynamic>{
      'errorFlag': instance.errorFlag,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$_Covid19ItemResponse _$_$_Covid19ItemResponseFromJson(
    Map<String, dynamic> json) {
  return _$_Covid19ItemResponse(
    json['date'] as String,
    json['name_jp'] as String,
    json['npatients'],
  );
}

Map<String, dynamic> _$_$_Covid19ItemResponseToJson(
        _$_Covid19ItemResponse instance) =>
    <String, dynamic>{
      'date': instance.date,
      'name_jp': instance.name,
      'npatients': instance.numberOfPatients,
    };
