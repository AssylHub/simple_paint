// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrokeDto _$StrokeDtoFromJson(Map<String, dynamic> json) {
  return _StrokeDto.fromJson(json);
}

/// @nodoc
mixin _$StrokeDto {
  @OffsetListConverter()
  List<Offset> get points => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  bool get isEraser => throw _privateConstructorUsedError;

  /// Serializes this StrokeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrokeDtoCopyWith<StrokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrokeDtoCopyWith<$Res> {
  factory $StrokeDtoCopyWith(StrokeDto value, $Res Function(StrokeDto) then) =
      _$StrokeDtoCopyWithImpl<$Res, StrokeDto>;
  @useResult
  $Res call(
      {@OffsetListConverter() List<Offset> points,
      @ColorConverter() Color color,
      double width,
      bool isEraser});
}

/// @nodoc
class _$StrokeDtoCopyWithImpl<$Res, $Val extends StrokeDto>
    implements $StrokeDtoCopyWith<$Res> {
  _$StrokeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrokeDto
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
abstract class _$$StrokeDtoImplCopyWith<$Res>
    implements $StrokeDtoCopyWith<$Res> {
  factory _$$StrokeDtoImplCopyWith(
          _$StrokeDtoImpl value, $Res Function(_$StrokeDtoImpl) then) =
      __$$StrokeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@OffsetListConverter() List<Offset> points,
      @ColorConverter() Color color,
      double width,
      bool isEraser});
}

/// @nodoc
class __$$StrokeDtoImplCopyWithImpl<$Res>
    extends _$StrokeDtoCopyWithImpl<$Res, _$StrokeDtoImpl>
    implements _$$StrokeDtoImplCopyWith<$Res> {
  __$$StrokeDtoImplCopyWithImpl(
      _$StrokeDtoImpl _value, $Res Function(_$StrokeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrokeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = null,
    Object? isEraser = null,
  }) {
    return _then(_$StrokeDtoImpl(
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
class _$StrokeDtoImpl extends _StrokeDto {
  const _$StrokeDtoImpl(
      {@OffsetListConverter() required final List<Offset> points,
      @ColorConverter() required this.color,
      required this.width,
      this.isEraser = false})
      : _points = points,
        super._();

  factory _$StrokeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrokeDtoImplFromJson(json);

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
    return 'StrokeDto(points: $points, color: $color, width: $width, isEraser: $isEraser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrokeDtoImpl &&
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

  /// Create a copy of StrokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrokeDtoImplCopyWith<_$StrokeDtoImpl> get copyWith =>
      __$$StrokeDtoImplCopyWithImpl<_$StrokeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrokeDtoImplToJson(
      this,
    );
  }
}

abstract class _StrokeDto extends StrokeDto {
  const factory _StrokeDto(
      {@OffsetListConverter() required final List<Offset> points,
      @ColorConverter() required final Color color,
      required final double width,
      final bool isEraser}) = _$StrokeDtoImpl;
  const _StrokeDto._() : super._();

  factory _StrokeDto.fromJson(Map<String, dynamic> json) =
      _$StrokeDtoImpl.fromJson;

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

  /// Create a copy of StrokeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrokeDtoImplCopyWith<_$StrokeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
