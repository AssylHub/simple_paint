// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      uid: json['uid'] as String,
      email: json['email'] as String?,
      displayName: json['displayName'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

_$UserEntityEmptyImpl _$$UserEntityEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$UserEntityEmptyImpl(
      uid: json['uid'] as String? ?? "",
      email: json['email'] as String? ?? "",
      displayName: json['displayName'] as String? ?? "",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserEntityEmptyImplToJson(
        _$UserEntityEmptyImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };
