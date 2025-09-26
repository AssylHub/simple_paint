// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileDto _$FileDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _FileDto.fromJson(json);
    case 'empty':
      return _FileDtoEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FileDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FileDto {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)
        $default, {
    required TResult Function(
            String name,
            String id,
            String extension,
            String size,
            String url,
            @JsonKey(name: 'created_at') String createdAt)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FileDto value) $default, {
    required TResult Function(_FileDtoEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FileDto value)? $default, {
    TResult? Function(_FileDtoEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FileDto value)? $default, {
    TResult Function(_FileDtoEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FileDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileDtoCopyWith<FileDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDtoCopyWith<$Res> {
  factory $FileDtoCopyWith(FileDto value, $Res Function(FileDto) then) =
      _$FileDtoCopyWithImpl<$Res, FileDto>;
  @useResult
  $Res call(
      {String name,
      String id,
      String extension,
      String size,
      String url,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$FileDtoCopyWithImpl<$Res, $Val extends FileDto>
    implements $FileDtoCopyWith<$Res> {
  _$FileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? extension = null,
    Object? size = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDtoImplCopyWith<$Res> implements $FileDtoCopyWith<$Res> {
  factory _$$FileDtoImplCopyWith(
          _$FileDtoImpl value, $Res Function(_$FileDtoImpl) then) =
      __$$FileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String extension,
      String size,
      String url,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$FileDtoImplCopyWithImpl<$Res>
    extends _$FileDtoCopyWithImpl<$Res, _$FileDtoImpl>
    implements _$$FileDtoImplCopyWith<$Res> {
  __$$FileDtoImplCopyWithImpl(
      _$FileDtoImpl _value, $Res Function(_$FileDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? extension = null,
    Object? size = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_$FileDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDtoImpl extends _FileDto {
  const _$FileDtoImpl(
      {required this.name,
      required this.id,
      required this.extension,
      required this.size,
      required this.url,
      @JsonKey(name: 'created_at') required this.createdAt,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$FileDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String extension;
  @override
  final String size;
  @override
  final String url;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileDto(name: $name, id: $id, extension: $extension, size: $size, url: $url, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, extension, size, url, createdAt);

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDtoImplCopyWith<_$FileDtoImpl> get copyWith =>
      __$$FileDtoImplCopyWithImpl<_$FileDtoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)
        $default, {
    required TResult Function(
            String name,
            String id,
            String extension,
            String size,
            String url,
            @JsonKey(name: 'created_at') String createdAt)
        empty,
  }) {
    return $default(name, id, extension, size, url, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
  }) {
    return $default?.call(name, id, extension, size, url, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, id, extension, size, url, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FileDto value) $default, {
    required TResult Function(_FileDtoEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FileDto value)? $default, {
    TResult? Function(_FileDtoEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FileDto value)? $default, {
    TResult Function(_FileDtoEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDtoImplToJson(
      this,
    );
  }
}

abstract class _FileDto extends FileDto {
  const factory _FileDto(
          {required final String name,
          required final String id,
          required final String extension,
          required final String size,
          required final String url,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$FileDtoImpl;
  const _FileDto._() : super._();

  factory _FileDto.fromJson(Map<String, dynamic> json) = _$FileDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get extension;
  @override
  String get size;
  @override
  String get url;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDtoImplCopyWith<_$FileDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileDtoEmptyImplCopyWith<$Res>
    implements $FileDtoCopyWith<$Res> {
  factory _$$FileDtoEmptyImplCopyWith(
          _$FileDtoEmptyImpl value, $Res Function(_$FileDtoEmptyImpl) then) =
      __$$FileDtoEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String extension,
      String size,
      String url,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$FileDtoEmptyImplCopyWithImpl<$Res>
    extends _$FileDtoCopyWithImpl<$Res, _$FileDtoEmptyImpl>
    implements _$$FileDtoEmptyImplCopyWith<$Res> {
  __$$FileDtoEmptyImplCopyWithImpl(
      _$FileDtoEmptyImpl _value, $Res Function(_$FileDtoEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? extension = null,
    Object? size = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_$FileDtoEmptyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDtoEmptyImpl extends _FileDtoEmpty {
  const _$FileDtoEmptyImpl(
      {this.name = "",
      this.id = "",
      this.extension = "",
      this.size = "",
      this.url = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$FileDtoEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDtoEmptyImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String extension;
  @override
  @JsonKey()
  final String size;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileDto.empty(name: $name, id: $id, extension: $extension, size: $size, url: $url, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDtoEmptyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, extension, size, url, createdAt);

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDtoEmptyImplCopyWith<_$FileDtoEmptyImpl> get copyWith =>
      __$$FileDtoEmptyImplCopyWithImpl<_$FileDtoEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)
        $default, {
    required TResult Function(
            String name,
            String id,
            String extension,
            String size,
            String url,
            @JsonKey(name: 'created_at') String createdAt)
        empty,
  }) {
    return empty(name, id, extension, size, url, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult? Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
  }) {
    return empty?.call(name, id, extension, size, url, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        $default, {
    TResult Function(String name, String id, String extension, String size,
            String url, @JsonKey(name: 'created_at') String createdAt)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(name, id, extension, size, url, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FileDto value) $default, {
    required TResult Function(_FileDtoEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FileDto value)? $default, {
    TResult? Function(_FileDtoEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FileDto value)? $default, {
    TResult Function(_FileDtoEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDtoEmptyImplToJson(
      this,
    );
  }
}

abstract class _FileDtoEmpty extends FileDto {
  const factory _FileDtoEmpty(
          {final String name,
          final String id,
          final String extension,
          final String size,
          final String url,
          @JsonKey(name: 'created_at') final String createdAt}) =
      _$FileDtoEmptyImpl;
  const _FileDtoEmpty._() : super._();

  factory _FileDtoEmpty.fromJson(Map<String, dynamic> json) =
      _$FileDtoEmptyImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get extension;
  @override
  String get size;
  @override
  String get url;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of FileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDtoEmptyImplCopyWith<_$FileDtoEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
