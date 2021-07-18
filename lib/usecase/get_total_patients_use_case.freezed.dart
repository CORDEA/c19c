// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_total_patients_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$Covid19TotalPatientsTearOff {
  const _$Covid19TotalPatientsTearOff();

  _Covid19TotalPatients call(
      DateTime date, int totalPatients, int todayPatients) {
    return _Covid19TotalPatients(
      date,
      totalPatients,
      todayPatients,
    );
  }
}

/// @nodoc
const $Covid19TotalPatients = _$Covid19TotalPatientsTearOff();

/// @nodoc
mixin _$Covid19TotalPatients {
  DateTime get date => throw _privateConstructorUsedError;
  int get totalPatients => throw _privateConstructorUsedError;
  int get todayPatients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Covid19TotalPatientsCopyWith<Covid19TotalPatients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Covid19TotalPatientsCopyWith<$Res> {
  factory $Covid19TotalPatientsCopyWith(Covid19TotalPatients value,
          $Res Function(Covid19TotalPatients) then) =
      _$Covid19TotalPatientsCopyWithImpl<$Res>;
  $Res call({DateTime date, int totalPatients, int todayPatients});
}

/// @nodoc
class _$Covid19TotalPatientsCopyWithImpl<$Res>
    implements $Covid19TotalPatientsCopyWith<$Res> {
  _$Covid19TotalPatientsCopyWithImpl(this._value, this._then);

  final Covid19TotalPatients _value;
  // ignore: unused_field
  final $Res Function(Covid19TotalPatients) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? totalPatients = freezed,
    Object? todayPatients = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPatients: totalPatients == freezed
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      todayPatients: todayPatients == freezed
          ? _value.todayPatients
          : todayPatients // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$Covid19TotalPatientsCopyWith<$Res>
    implements $Covid19TotalPatientsCopyWith<$Res> {
  factory _$Covid19TotalPatientsCopyWith(_Covid19TotalPatients value,
          $Res Function(_Covid19TotalPatients) then) =
      __$Covid19TotalPatientsCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, int totalPatients, int todayPatients});
}

/// @nodoc
class __$Covid19TotalPatientsCopyWithImpl<$Res>
    extends _$Covid19TotalPatientsCopyWithImpl<$Res>
    implements _$Covid19TotalPatientsCopyWith<$Res> {
  __$Covid19TotalPatientsCopyWithImpl(
      _Covid19TotalPatients _value, $Res Function(_Covid19TotalPatients) _then)
      : super(_value, (v) => _then(v as _Covid19TotalPatients));

  @override
  _Covid19TotalPatients get _value => super._value as _Covid19TotalPatients;

  @override
  $Res call({
    Object? date = freezed,
    Object? totalPatients = freezed,
    Object? todayPatients = freezed,
  }) {
    return _then(_Covid19TotalPatients(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPatients == freezed
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      todayPatients == freezed
          ? _value.todayPatients
          : todayPatients // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Covid19TotalPatients implements _Covid19TotalPatients {
  _$_Covid19TotalPatients(this.date, this.totalPatients, this.todayPatients);

  @override
  final DateTime date;
  @override
  final int totalPatients;
  @override
  final int todayPatients;

  @override
  String toString() {
    return 'Covid19TotalPatients(date: $date, totalPatients: $totalPatients, todayPatients: $todayPatients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Covid19TotalPatients &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.totalPatients, totalPatients) ||
                const DeepCollectionEquality()
                    .equals(other.totalPatients, totalPatients)) &&
            (identical(other.todayPatients, todayPatients) ||
                const DeepCollectionEquality()
                    .equals(other.todayPatients, todayPatients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(totalPatients) ^
      const DeepCollectionEquality().hash(todayPatients);

  @JsonKey(ignore: true)
  @override
  _$Covid19TotalPatientsCopyWith<_Covid19TotalPatients> get copyWith =>
      __$Covid19TotalPatientsCopyWithImpl<_Covid19TotalPatients>(
          this, _$identity);
}

abstract class _Covid19TotalPatients implements Covid19TotalPatients {
  factory _Covid19TotalPatients(
          DateTime date, int totalPatients, int todayPatients) =
      _$_Covid19TotalPatients;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  int get totalPatients => throw _privateConstructorUsedError;
  @override
  int get todayPatients => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Covid19TotalPatientsCopyWith<_Covid19TotalPatients> get copyWith =>
      throw _privateConstructorUsedError;
}
