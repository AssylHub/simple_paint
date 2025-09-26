// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileDtoImpl _$$FileDtoImplFromJson(Map<String, dynamic> json) =>
    _$FileDtoImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      extension: json['extension'] as String,
      size: json['size'] as String,
      url: json['url'] as String,
      createdAt: json['created_at'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileDtoImplToJson(_$FileDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'extension': instance.extension,
      'size': instance.size,
      'url': instance.url,
      'created_at': instance.createdAt,
      'runtimeType': instance.$type,
    };

_$FileDtoEmptyImpl _$$FileDtoEmptyImplFromJson(Map<String, dynamic> json) =>
    _$FileDtoEmptyImpl(
      name: json['name'] as String? ?? "",
      id: json['id'] as String? ?? "",
      extension: json['extension'] as String? ?? "",
      size: json['size'] as String? ?? "",
      url: json['url'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileDtoEmptyImplToJson(_$FileDtoEmptyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'extension': instance.extension,
      'size': instance.size,
      'url': instance.url,
      'created_at': instance.createdAt,
      'runtimeType': instance.$type,
    };
