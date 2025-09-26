// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sketch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sketch _$SketchFromJson(Map<String, dynamic> json) {
  return _Sketch.fromJson(json);
}

/// @nodoc
mixin _$Sketch {
  String get id => throw _privateConstructorUsedError;
  List<Stroke> get strokes => throw _privateConstructorUsedError;
  @SizeConverter()
  Size get canvasSize => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get backgroundPath => throw _privateConstructorUsedError;

  /// Serializes this Sketch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sketch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SketchCopyWith<Sketch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SketchCopyWith<$Res> {
  factory $SketchCopyWith(Sketch value, $Res Function(Sketch) then) =
      _$SketchCopyWithImpl<$Res, Sketch>;
  @useResult
  $Res call(
      {String id,
      List<Stroke> strokes,
      @SizeConverter() Size canvasSize,
      DateTime updatedAt,
      String? backgroundPath});
}

/// @nodoc
class _$SketchCopyWithImpl<$Res, $Val extends Sketch>
    implements $SketchCopyWith<$Res> {
  _$SketchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sketch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strokes = null,
    Object? canvasSize = null,
    Object? updatedAt = null,
    Object? backgroundPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strokes: null == strokes
          ? _value.strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<Stroke>,
      canvasSize: null == canvasSize
          ? _value.canvasSize
          : canvasSize // ignore: cast_nullable_to_non_nullable
              as Size,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      backgroundPath: freezed == backgroundPath
          ? _value.backgroundPath
          : backgroundPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SketchImplCopyWith<$Res> implements $SketchCopyWith<$Res> {
  factory _$$SketchImplCopyWith(
          _$SketchImpl value, $Res Function(_$SketchImpl) then) =
      __$$SketchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<Stroke> strokes,
      @SizeConverter() Size canvasSize,
      DateTime updatedAt,
      String? backgroundPath});
}

/// @nodoc
class __$$SketchImplCopyWithImpl<$Res>
    extends _$SketchCopyWithImpl<$Res, _$SketchImpl>
    implements _$$SketchImplCopyWith<$Res> {
  __$$SketchImplCopyWithImpl(
      _$SketchImpl _value, $Res Function(_$SketchImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sketch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strokes = null,
    Object? canvasSize = null,
    Object? updatedAt = null,
    Object? backgroundPath = freezed,
  }) {
    return _then(_$SketchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strokes: null == strokes
          ? _value._strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<Stroke>,
      canvasSize: null == canvasSize
          ? _value.canvasSize
          : canvasSize // ignore: cast_nullable_to_non_nullable
              as Size,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      backgroundPath: freezed == backgroundPath
          ? _value.backgroundPath
          : backgroundPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SketchImpl extends _Sketch {
  const _$SketchImpl(
      {required this.id,
      required final List<Stroke> strokes,
      @SizeConverter() required this.canvasSize,
      required this.updatedAt,
      this.backgroundPath})
      : _strokes = strokes,
        super._();

  factory _$SketchImpl.fromJson(Map<String, dynamic> json) =>
      _$$SketchImplFromJson(json);

  @override
  final String id;
  final List<Stroke> _strokes;
  @override
  List<Stroke> get strokes {
    if (_strokes is EqualUnmodifiableListView) return _strokes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strokes);
  }

  @override
  @SizeConverter()
  final Size canvasSize;
  @override
  final DateTime updatedAt;
  @override
  final String? backgroundPath;

  @override
  String toString() {
    return 'Sketch(id: $id, strokes: $strokes, canvasSize: $canvasSize, updatedAt: $updatedAt, backgroundPath: $backgroundPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SketchImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._strokes, _strokes) &&
            (identical(other.canvasSize, canvasSize) ||
                other.canvasSize == canvasSize) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.backgroundPath, backgroundPath) ||
                other.backgroundPath == backgroundPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_strokes),
      canvasSize,
      updatedAt,
      backgroundPath);

  /// Create a copy of Sketch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SketchImplCopyWith<_$SketchImpl> get copyWith =>
      __$$SketchImplCopyWithImpl<_$SketchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SketchImplToJson(
      this,
    );
  }
}

abstract class _Sketch extends Sketch {
  const factory _Sketch(
      {required final String id,
      required final List<Stroke> strokes,
      @SizeConverter() required final Size canvasSize,
      required final DateTime updatedAt,
      final String? backgroundPath}) = _$SketchImpl;
  const _Sketch._() : super._();

  factory _Sketch.fromJson(Map<String, dynamic> json) = _$SketchImpl.fromJson;

  @override
  String get id;
  @override
  List<Stroke> get strokes;
  @override
  @SizeConverter()
  Size get canvasSize;
  @override
  DateTime get updatedAt;
  @override
  String? get backgroundPath;

  /// Create a copy of Sketch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SketchImplCopyWith<_$SketchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
