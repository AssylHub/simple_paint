// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stroke _$StrokeFromJson(Map<String, dynamic> json) {
  return _Stroke.fromJson(json);
}

/// @nodoc
mixin _$Stroke {
  @OffsetListConverter()
  List<Offset> get points => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  bool get isEraser => throw _privateConstructorUsedError;

  /// Serializes this Stroke to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stroke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrokeCopyWith<Stroke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrokeCopyWith<$Res> {
  factory $StrokeCopyWith(Stroke value, $Res Function(Stroke) then) =
      _$StrokeCopyWithImpl<$Res, Stroke>;
  @useResult
  $Res call(
      {@OffsetListConverter() List<Offset> points,
      @ColorConverter() Color color,
      double width,
      bool isEraser});
}

/// @nodoc
class _$StrokeCopyWithImpl<$Res, $Val extends Stroke>
    implements $StrokeCopyWith<$Res> {
  _$StrokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stroke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? isEraser = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      isEraser: null == isEraser
          ? _value.isEraser
          : isEraser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrokeImplCopyWith<$Res> implements $StrokeCopyWith<$Res> {
  factory _$$StrokeImplCopyWith(
          _$StrokeImpl value, $Res Function(_$StrokeImpl) then) =
      __$$StrokeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@OffsetListConverter() List<Offset> points,
      @ColorConverter() Color color,
      double width,
      bool isEraser});
}

/// @nodoc
class __$$StrokeImplCopyWithImpl<$Res>
    extends _$StrokeCopyWithImpl<$Res, _$StrokeImpl>
    implements _$$StrokeImplCopyWith<$Res> {
  __$$StrokeImplCopyWithImpl(
      _$StrokeImpl _value, $Res Function(_$StrokeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stroke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? isEraser = null,
  }) {
    return _then(_$StrokeImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      isEraser: null == isEraser
          ? _value.isEraser
          : isEraser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrokeImpl extends _Stroke {
  const _$StrokeImpl(
      {@OffsetListConverter() required final List<Offset> points,
      @ColorConverter() required this.color,
      required this.width,
      this.isEraser = false})
      : _points = points,
        super._();

  factory _$StrokeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrokeImplFromJson(json);

  final List<Offset> _points;
  @override
  @OffsetListConverter()
  List<Offset> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @ColorConverter()
  final Color color;
  @override
  final double width;
  @override
  @JsonKey()
  final bool isEraser;

  @override
  String toString() {
    return 'Stroke(points: $points, color: $color, width: $width, isEraser: $isEraser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrokeImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.isEraser, isEraser) ||
                other.isEraser == isEraser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_points), color, width, isEraser);

  /// Create a copy of Stroke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrokeImplCopyWith<_$StrokeImpl> get copyWith =>
      __$$StrokeImplCopyWithImpl<_$StrokeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrokeImplToJson(
      this,
    );
  }
}

abstract class _Stroke extends Stroke {
  const factory _Stroke(
      {@OffsetListConverter() required final List<Offset> points,
      @ColorConverter() required final Color color,
      required final double width,
      final bool isEraser}) = _$StrokeImpl;
  const _Stroke._() : super._();

  factory _Stroke.fromJson(Map<String, dynamic> json) = _$StrokeImpl.fromJson;

  @override
  @OffsetListConverter()
  List<Offset> get points;
  @override
  @ColorConverter()
  Color get color;
  @override
  double get width;
  @override
  bool get isEraser;

  /// Create a copy of Stroke
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrokeImplCopyWith<_$StrokeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
