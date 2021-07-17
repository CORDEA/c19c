// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bar_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BarChartSeriesTearOff {
  const _$BarChartSeriesTearOff();

  _BarChartSeries<X> call<X extends Comparable<X>>(
      Color color, List<BarChartPoint<X>> points) {
    return _BarChartSeries<X>(
      color,
      points,
    );
  }
}

/// @nodoc
const $BarChartSeries = _$BarChartSeriesTearOff();

/// @nodoc
mixin _$BarChartSeries<X extends Comparable<X>> {
  Color get color => throw _privateConstructorUsedError;
  List<BarChartPoint<X>> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarChartSeriesCopyWith<X, BarChartSeries<X>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarChartSeriesCopyWith<X extends Comparable<X>, $Res> {
  factory $BarChartSeriesCopyWith(
          BarChartSeries<X> value, $Res Function(BarChartSeries<X>) then) =
      _$BarChartSeriesCopyWithImpl<X, $Res>;
  $Res call({Color color, List<BarChartPoint<X>> points});
}

/// @nodoc
class _$BarChartSeriesCopyWithImpl<X extends Comparable<X>, $Res>
    implements $BarChartSeriesCopyWith<X, $Res> {
  _$BarChartSeriesCopyWithImpl(this._value, this._then);

  final BarChartSeries<X> _value;
  // ignore: unused_field
  final $Res Function(BarChartSeries<X>) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<BarChartPoint<X>>,
    ));
  }
}

/// @nodoc
abstract class _$BarChartSeriesCopyWith<X extends Comparable<X>, $Res>
    implements $BarChartSeriesCopyWith<X, $Res> {
  factory _$BarChartSeriesCopyWith(
          _BarChartSeries<X> value, $Res Function(_BarChartSeries<X>) then) =
      __$BarChartSeriesCopyWithImpl<X, $Res>;
  @override
  $Res call({Color color, List<BarChartPoint<X>> points});
}

/// @nodoc
class __$BarChartSeriesCopyWithImpl<X extends Comparable<X>, $Res>
    extends _$BarChartSeriesCopyWithImpl<X, $Res>
    implements _$BarChartSeriesCopyWith<X, $Res> {
  __$BarChartSeriesCopyWithImpl(
      _BarChartSeries<X> _value, $Res Function(_BarChartSeries<X>) _then)
      : super(_value, (v) => _then(v as _BarChartSeries<X>));

  @override
  _BarChartSeries<X> get _value => super._value as _BarChartSeries<X>;

  @override
  $Res call({
    Object? color = freezed,
    Object? points = freezed,
  }) {
    return _then(_BarChartSeries<X>(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<BarChartPoint<X>>,
    ));
  }
}

/// @nodoc

class _$_BarChartSeries<X extends Comparable<X>> implements _BarChartSeries<X> {
  _$_BarChartSeries(this.color, this.points);

  @override
  final Color color;
  @override
  final List<BarChartPoint<X>> points;

  @override
  String toString() {
    return 'BarChartSeries<$X>(color: $color, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarChartSeries<X> &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$BarChartSeriesCopyWith<X, _BarChartSeries<X>> get copyWith =>
      __$BarChartSeriesCopyWithImpl<X, _BarChartSeries<X>>(this, _$identity);
}

abstract class _BarChartSeries<X extends Comparable<X>>
    implements BarChartSeries<X> {
  factory _BarChartSeries(Color color, List<BarChartPoint<X>> points) =
      _$_BarChartSeries<X>;

  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  List<BarChartPoint<X>> get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BarChartSeriesCopyWith<X, _BarChartSeries<X>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BarChartPointTearOff {
  const _$BarChartPointTearOff();

  _BarChartPoint<X> call<X extends Comparable<X>>(X x, num y) {
    return _BarChartPoint<X>(
      x,
      y,
    );
  }
}

/// @nodoc
const $BarChartPoint = _$BarChartPointTearOff();

/// @nodoc
mixin _$BarChartPoint<X extends Comparable<X>> {
  X get x => throw _privateConstructorUsedError;
  num get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarChartPointCopyWith<X, BarChartPoint<X>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarChartPointCopyWith<X extends Comparable<X>, $Res> {
  factory $BarChartPointCopyWith(
          BarChartPoint<X> value, $Res Function(BarChartPoint<X>) then) =
      _$BarChartPointCopyWithImpl<X, $Res>;
  $Res call({X x, num y});
}

/// @nodoc
class _$BarChartPointCopyWithImpl<X extends Comparable<X>, $Res>
    implements $BarChartPointCopyWith<X, $Res> {
  _$BarChartPointCopyWithImpl(this._value, this._then);

  final BarChartPoint<X> _value;
  // ignore: unused_field
  final $Res Function(BarChartPoint<X>) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as X,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$BarChartPointCopyWith<X extends Comparable<X>, $Res>
    implements $BarChartPointCopyWith<X, $Res> {
  factory _$BarChartPointCopyWith(
          _BarChartPoint<X> value, $Res Function(_BarChartPoint<X>) then) =
      __$BarChartPointCopyWithImpl<X, $Res>;
  @override
  $Res call({X x, num y});
}

/// @nodoc
class __$BarChartPointCopyWithImpl<X extends Comparable<X>, $Res>
    extends _$BarChartPointCopyWithImpl<X, $Res>
    implements _$BarChartPointCopyWith<X, $Res> {
  __$BarChartPointCopyWithImpl(
      _BarChartPoint<X> _value, $Res Function(_BarChartPoint<X>) _then)
      : super(_value, (v) => _then(v as _BarChartPoint<X>));

  @override
  _BarChartPoint<X> get _value => super._value as _BarChartPoint<X>;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_BarChartPoint<X>(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as X,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_BarChartPoint<X extends Comparable<X>> implements _BarChartPoint<X> {
  _$_BarChartPoint(this.x, this.y);

  @override
  final X x;
  @override
  final num y;

  @override
  String toString() {
    return 'BarChartPoint<$X>(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarChartPoint<X> &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$BarChartPointCopyWith<X, _BarChartPoint<X>> get copyWith =>
      __$BarChartPointCopyWithImpl<X, _BarChartPoint<X>>(this, _$identity);
}

abstract class _BarChartPoint<X extends Comparable<X>>
    implements BarChartPoint<X> {
  factory _BarChartPoint(X x, num y) = _$_BarChartPoint<X>;

  @override
  X get x => throw _privateConstructorUsedError;
  @override
  num get y => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BarChartPointCopyWith<X, _BarChartPoint<X>> get copyWith =>
      throw _privateConstructorUsedError;
}
