// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sketch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SketchDto _$SketchDtoFromJson(Map<String, dynamic> json) {
  return _SketchDto.fromJson(json);
}

/// @nodoc
mixin _$SketchDto {
  String get id => throw _privateConstructorUsedError;
  List<StrokeDto> get strokes => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get backgroundPath => throw _privateConstructorUsedError;
  String? get storagePath =>
      throw _privateConstructorUsedError; // filled by remote after upload
  String? get previewUrl => throw _privateConstructorUsedError;

  /// Serializes this SketchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SketchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SketchDtoCopyWith<SketchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SketchDtoCopyWith<$Res> {
  factory $SketchDtoCopyWith(SketchDto value, $Res Function(SketchDto) then) =
      _$SketchDtoCopyWithImpl<$Res, SketchDto>;
  @useResult
  $Res call(
      {String id,
      List<StrokeDto> strokes,
      double width,
      double height,
      DateTime updatedAt,
      String? backgroundPath,
      String? storagePath,
      String? previewUrl});
}

/// @nodoc
class _$SketchDtoCopyWithImpl<$Res, $Val extends SketchDto>
    implements $SketchDtoCopyWith<$Res> {
  _$SketchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SketchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strokes = null,
    Object? width = null,
    Object? height = null,
    Object? updatedAt = null,
    Object? backgroundPath = freezed,
    Object? storagePath = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strokes: null == strokes
          ? _value.strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<StrokeDto>,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      backgroundPath: freezed == backgroundPath
          ? _value.backgroundPath
          : backgroundPath // ignore: cast_nullable_to_non_nullable
              as String?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SketchDtoImplCopyWith<$Res>
    implements $SketchDtoCopyWith<$Res> {
  factory _$$SketchDtoImplCopyWith(
          _$SketchDtoImpl value, $Res Function(_$SketchDtoImpl) then) =
      __$$SketchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<StrokeDto> strokes,
      double width,
      double height,
      DateTime updatedAt,
      String? backgroundPath,
      String? storagePath,
      String? previewUrl});
}

/// @nodoc
class __$$SketchDtoImplCopyWithImpl<$Res>
    extends _$SketchDtoCopyWithImpl<$Res, _$SketchDtoImpl>
    implements _$$SketchDtoImplCopyWith<$Res> {
  __$$SketchDtoImplCopyWithImpl(
      _$SketchDtoImpl _value, $Res Function(_$SketchDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SketchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strokes = null,
    Object? width = null,
    Object? height = null,
    Object? updatedAt = null,
    Object? backgroundPath = freezed,
    Object? storagePath = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$SketchDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strokes: null == strokes
          ? _value._strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<StrokeDto>,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      backgroundPath: freezed == backgroundPath
          ? _value.backgroundPath
          : backgroundPath // ignore: cast_nullable_to_non_nullable
              as String?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SketchDtoImpl extends _SketchDto {
  const _$SketchDtoImpl(
      {required this.id,
      required final List<StrokeDto> strokes,
      required this.width,
      required this.height,
      required this.updatedAt,
      this.backgroundPath,
      this.storagePath,
      this.previewUrl})
      : _strokes = strokes,
        super._();

  factory _$SketchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SketchDtoImplFromJson(json);

  @override
  final String id;
  final List<StrokeDto> _strokes;
  @override
  List<StrokeDto> get strokes {
    if (_strokes is EqualUnmodifiableListView) return _strokes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strokes);
  }

  @override
  final double width;
  @override
  final double height;
  @override
  final DateTime updatedAt;
  @override
  final String? backgroundPath;
  @override
  final String? storagePath;
// filled by remote after upload
  @override
  final String? previewUrl;

  @override
  String toString() {
    return 'SketchDto(id: $id, strokes: $strokes, width: $width, height: $height, updatedAt: $updatedAt, backgroundPath: $backgroundPath, storagePath: $storagePath, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SketchDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._strokes, _strokes) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.backgroundPath, backgroundPath) ||
                other.backgroundPath == backgroundPath) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_strokes),
      width,
      height,
      updatedAt,
      backgroundPath,
      storagePath,
      previewUrl);

  /// Create a copy of SketchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SketchDtoImplCopyWith<_$SketchDtoImpl> get copyWith =>
      __$$SketchDtoImplCopyWithImpl<_$SketchDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SketchDtoImplToJson(
      this,
    );
  }
}

abstract class _SketchDto extends SketchDto {
  const factory _SketchDto(
      {required final String id,
      required final List<StrokeDto> strokes,
      required final double width,
      required final double height,
      required final DateTime updatedAt,
      final String? backgroundPath,
      final String? storagePath,
      final String? previewUrl}) = _$SketchDtoImpl;
  const _SketchDto._() : super._();

  factory _SketchDto.fromJson(Map<String, dynamic> json) =
      _$SketchDtoImpl.fromJson;

  @override
  String get id;
  @override
  List<StrokeDto> get strokes;
  @override
  double get width;
  @override
  double get height;
  @override
  DateTime get updatedAt;
  @override
  String? get backgroundPath;
  @override
  String? get storagePath; // filled by remote after upload
  @override
  String? get previewUrl;

  /// Create a copy of SketchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SketchDtoImplCopyWith<_$SketchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
