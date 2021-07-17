// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'covid19_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Covid19Response _$Covid19ResponseFromJson(Map<String, dynamic> json) {
  return _Covid19Response.fromJson(json);
}

/// @nodoc
class _$Covid19ResponseTearOff {
  const _$Covid19ResponseTearOff();

  _Covid19Response call(
      Covid19ErrorResponse errorInfo, List<Covid19ItemResponse> itemList) {
    return _Covid19Response(
      errorInfo,
      itemList,
    );
  }

  Covid19Response fromJson(Map<String, Object> json) {
    return Covid19Response.fromJson(json);
  }
}

/// @nodoc
const $Covid19Response = _$Covid19ResponseTearOff();

/// @nodoc
mixin _$Covid19Response {
  Covid19ErrorResponse get errorInfo => throw _privateConstructorUsedError;
  List<Covid19ItemResponse> get itemList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Covid19ResponseCopyWith<Covid19Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Covid19ResponseCopyWith<$Res> {
  factory $Covid19ResponseCopyWith(
          Covid19Response value, $Res Function(Covid19Response) then) =
      _$Covid19ResponseCopyWithImpl<$Res>;
  $Res call(
      {Covid19ErrorResponse errorInfo, List<Covid19ItemResponse> itemList});

  $Covid19ErrorResponseCopyWith<$Res> get errorInfo;
}

/// @nodoc
class _$Covid19ResponseCopyWithImpl<$Res>
    implements $Covid19ResponseCopyWith<$Res> {
  _$Covid19ResponseCopyWithImpl(this._value, this._then);

  final Covid19Response _value;
  // ignore: unused_field
  final $Res Function(Covid19Response) _then;

  @override
  $Res call({
    Object? errorInfo = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_value.copyWith(
      errorInfo: errorInfo == freezed
          ? _value.errorInfo
          : errorInfo // ignore: cast_nullable_to_non_nullable
              as Covid19ErrorResponse,
      itemList: itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Covid19ItemResponse>,
    ));
  }

  @override
  $Covid19ErrorResponseCopyWith<$Res> get errorInfo {
    return $Covid19ErrorResponseCopyWith<$Res>(_value.errorInfo, (value) {
      return _then(_value.copyWith(errorInfo: value));
    });
  }
}

/// @nodoc
abstract class _$Covid19ResponseCopyWith<$Res>
    implements $Covid19ResponseCopyWith<$Res> {
  factory _$Covid19ResponseCopyWith(
          _Covid19Response value, $Res Function(_Covid19Response) then) =
      __$Covid19ResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Covid19ErrorResponse errorInfo, List<Covid19ItemResponse> itemList});

  @override
  $Covid19ErrorResponseCopyWith<$Res> get errorInfo;
}

/// @nodoc
class __$Covid19ResponseCopyWithImpl<$Res>
    extends _$Covid19ResponseCopyWithImpl<$Res>
    implements _$Covid19ResponseCopyWith<$Res> {
  __$Covid19ResponseCopyWithImpl(
      _Covid19Response _value, $Res Function(_Covid19Response) _then)
      : super(_value, (v) => _then(v as _Covid19Response));

  @override
  _Covid19Response get _value => super._value as _Covid19Response;

  @override
  $Res call({
    Object? errorInfo = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_Covid19Response(
      errorInfo == freezed
          ? _value.errorInfo
          : errorInfo // ignore: cast_nullable_to_non_nullable
              as Covid19ErrorResponse,
      itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Covid19ItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Covid19Response implements _Covid19Response {
  _$_Covid19Response(this.errorInfo, this.itemList);

  factory _$_Covid19Response.fromJson(Map<String, dynamic> json) =>
      _$_$_Covid19ResponseFromJson(json);

  @override
  final Covid19ErrorResponse errorInfo;
  @override
  final List<Covid19ItemResponse> itemList;

  @override
  String toString() {
    return 'Covid19Response(errorInfo: $errorInfo, itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Covid19Response &&
            (identical(other.errorInfo, errorInfo) ||
                const DeepCollectionEquality()
                    .equals(other.errorInfo, errorInfo)) &&
            (identical(other.itemList, itemList) ||
                const DeepCollectionEquality()
                    .equals(other.itemList, itemList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorInfo) ^
      const DeepCollectionEquality().hash(itemList);

  @JsonKey(ignore: true)
  @override
  _$Covid19ResponseCopyWith<_Covid19Response> get copyWith =>
      __$Covid19ResponseCopyWithImpl<_Covid19Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_Covid19ResponseToJson(this);
  }
}

abstract class _Covid19Response implements Covid19Response {
  factory _Covid19Response(
          Covid19ErrorResponse errorInfo, List<Covid19ItemResponse> itemList) =
      _$_Covid19Response;

  factory _Covid19Response.fromJson(Map<String, dynamic> json) =
      _$_Covid19Response.fromJson;

  @override
  Covid19ErrorResponse get errorInfo => throw _privateConstructorUsedError;
  @override
  List<Covid19ItemResponse> get itemList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Covid19ResponseCopyWith<_Covid19Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Covid19ErrorResponse _$Covid19ErrorResponseFromJson(Map<String, dynamic> json) {
  return _Covid19ErrorResponse.fromJson(json);
}

/// @nodoc
class _$Covid19ErrorResponseTearOff {
  const _$Covid19ErrorResponseTearOff();

  _Covid19ErrorResponse call(
      int errorFlag, int? errorCode, String? errorMessage) {
    return _Covid19ErrorResponse(
      errorFlag,
      errorCode,
      errorMessage,
    );
  }

  Covid19ErrorResponse fromJson(Map<String, Object> json) {
    return Covid19ErrorResponse.fromJson(json);
  }
}

/// @nodoc
const $Covid19ErrorResponse = _$Covid19ErrorResponseTearOff();

/// @nodoc
mixin _$Covid19ErrorResponse {
  int get errorFlag => throw _privateConstructorUsedError;
  int? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Covid19ErrorResponseCopyWith<Covid19ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Covid19ErrorResponseCopyWith<$Res> {
  factory $Covid19ErrorResponseCopyWith(Covid19ErrorResponse value,
          $Res Function(Covid19ErrorResponse) then) =
      _$Covid19ErrorResponseCopyWithImpl<$Res>;
  $Res call({int errorFlag, int? errorCode, String? errorMessage});
}

/// @nodoc
class _$Covid19ErrorResponseCopyWithImpl<$Res>
    implements $Covid19ErrorResponseCopyWith<$Res> {
  _$Covid19ErrorResponseCopyWithImpl(this._value, this._then);

  final Covid19ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(Covid19ErrorResponse) _then;

  @override
  $Res call({
    Object? errorFlag = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorFlag: errorFlag == freezed
          ? _value.errorFlag
          : errorFlag // ignore: cast_nullable_to_non_nullable
              as int,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$Covid19ErrorResponseCopyWith<$Res>
    implements $Covid19ErrorResponseCopyWith<$Res> {
  factory _$Covid19ErrorResponseCopyWith(_Covid19ErrorResponse value,
          $Res Function(_Covid19ErrorResponse) then) =
      __$Covid19ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({int errorFlag, int? errorCode, String? errorMessage});
}

/// @nodoc
class __$Covid19ErrorResponseCopyWithImpl<$Res>
    extends _$Covid19ErrorResponseCopyWithImpl<$Res>
    implements _$Covid19ErrorResponseCopyWith<$Res> {
  __$Covid19ErrorResponseCopyWithImpl(
      _Covid19ErrorResponse _value, $Res Function(_Covid19ErrorResponse) _then)
      : super(_value, (v) => _then(v as _Covid19ErrorResponse));

  @override
  _Covid19ErrorResponse get _value => super._value as _Covid19ErrorResponse;

  @override
  $Res call({
    Object? errorFlag = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Covid19ErrorResponse(
      errorFlag == freezed
          ? _value.errorFlag
          : errorFlag // ignore: cast_nullable_to_non_nullable
              as int,
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Covid19ErrorResponse implements _Covid19ErrorResponse {
  _$_Covid19ErrorResponse(this.errorFlag, this.errorCode, this.errorMessage);

  factory _$_Covid19ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_Covid19ErrorResponseFromJson(json);

  @override
  final int errorFlag;
  @override
  final int? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'Covid19ErrorResponse(errorFlag: $errorFlag, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Covid19ErrorResponse &&
            (identical(other.errorFlag, errorFlag) ||
                const DeepCollectionEquality()
                    .equals(other.errorFlag, errorFlag)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorFlag) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$Covid19ErrorResponseCopyWith<_Covid19ErrorResponse> get copyWith =>
      __$Covid19ErrorResponseCopyWithImpl<_Covid19ErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_Covid19ErrorResponseToJson(this);
  }
}

abstract class _Covid19ErrorResponse implements Covid19ErrorResponse {
  factory _Covid19ErrorResponse(
          int errorFlag, int? errorCode, String? errorMessage) =
      _$_Covid19ErrorResponse;

  factory _Covid19ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_Covid19ErrorResponse.fromJson;

  @override
  int get errorFlag => throw _privateConstructorUsedError;
  @override
  int? get errorCode => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Covid19ErrorResponseCopyWith<_Covid19ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Covid19ItemResponse _$Covid19ItemResponseFromJson(Map<String, dynamic> json) {
  return _Covid19ItemResponse.fromJson(json);
}

/// @nodoc
class _$Covid19ItemResponseTearOff {
  const _$Covid19ItemResponseTearOff();

  _Covid19ItemResponse call(String date, @JsonKey(name: 'name_jp') String name,
      @JsonKey(name: 'npatients') dynamic numberOfPatients) {
    return _Covid19ItemResponse(
      date,
      name,
      numberOfPatients,
    );
  }

  Covid19ItemResponse fromJson(Map<String, Object> json) {
    return Covid19ItemResponse.fromJson(json);
  }
}

/// @nodoc
const $Covid19ItemResponse = _$Covid19ItemResponseTearOff();

/// @nodoc
mixin _$Covid19ItemResponse {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_jp')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'npatients')
  dynamic get numberOfPatients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Covid19ItemResponseCopyWith<Covid19ItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Covid19ItemResponseCopyWith<$Res> {
  factory $Covid19ItemResponseCopyWith(
          Covid19ItemResponse value, $Res Function(Covid19ItemResponse) then) =
      _$Covid19ItemResponseCopyWithImpl<$Res>;
  $Res call(
      {String date,
      @JsonKey(name: 'name_jp') String name,
      @JsonKey(name: 'npatients') dynamic numberOfPatients});
}

/// @nodoc
class _$Covid19ItemResponseCopyWithImpl<$Res>
    implements $Covid19ItemResponseCopyWith<$Res> {
  _$Covid19ItemResponseCopyWithImpl(this._value, this._then);

  final Covid19ItemResponse _value;
  // ignore: unused_field
  final $Res Function(Covid19ItemResponse) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? name = freezed,
    Object? numberOfPatients = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPatients: numberOfPatients == freezed
          ? _value.numberOfPatients
          : numberOfPatients // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$Covid19ItemResponseCopyWith<$Res>
    implements $Covid19ItemResponseCopyWith<$Res> {
  factory _$Covid19ItemResponseCopyWith(_Covid19ItemResponse value,
          $Res Function(_Covid19ItemResponse) then) =
      __$Covid19ItemResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      @JsonKey(name: 'name_jp') String name,
      @JsonKey(name: 'npatients') dynamic numberOfPatients});
}

/// @nodoc
class __$Covid19ItemResponseCopyWithImpl<$Res>
    extends _$Covid19ItemResponseCopyWithImpl<$Res>
    implements _$Covid19ItemResponseCopyWith<$Res> {
  __$Covid19ItemResponseCopyWithImpl(
      _Covid19ItemResponse _value, $Res Function(_Covid19ItemResponse) _then)
      : super(_value, (v) => _then(v as _Covid19ItemResponse));

  @override
  _Covid19ItemResponse get _value => super._value as _Covid19ItemResponse;

  @override
  $Res call({
    Object? date = freezed,
    Object? name = freezed,
    Object? numberOfPatients = freezed,
  }) {
    return _then(_Covid19ItemResponse(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPatients == freezed ? _value.numberOfPatients : numberOfPatients,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Covid19ItemResponse implements _Covid19ItemResponse {
  _$_Covid19ItemResponse(this.date, @JsonKey(name: 'name_jp') this.name,
      @JsonKey(name: 'npatients') this.numberOfPatients);

  factory _$_Covid19ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_Covid19ItemResponseFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: 'name_jp')
  final String name;
  @override
  @JsonKey(name: 'npatients')
  final dynamic numberOfPatients;

  @override
  String toString() {
    return 'Covid19ItemResponse(date: $date, name: $name, numberOfPatients: $numberOfPatients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Covid19ItemResponse &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.numberOfPatients, numberOfPatients) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfPatients, numberOfPatients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(numberOfPatients);

  @JsonKey(ignore: true)
  @override
  _$Covid19ItemResponseCopyWith<_Covid19ItemResponse> get copyWith =>
      __$Covid19ItemResponseCopyWithImpl<_Covid19ItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_Covid19ItemResponseToJson(this);
  }
}

abstract class _Covid19ItemResponse implements Covid19ItemResponse {
  factory _Covid19ItemResponse(
          String date,
          @JsonKey(name: 'name_jp') String name,
          @JsonKey(name: 'npatients') dynamic numberOfPatients) =
      _$_Covid19ItemResponse;

  factory _Covid19ItemResponse.fromJson(Map<String, dynamic> json) =
      _$_Covid19ItemResponse.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name_jp')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'npatients')
  dynamic get numberOfPatients => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Covid19ItemResponseCopyWith<_Covid19ItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
