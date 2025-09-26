// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stroke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrokeImpl _$$StrokeImplFromJson(Map<String, dynamic> json) => _$StrokeImpl(
      points: const OffsetListConverter()
          .fromJson(json['points'] as List<Map<String, double>>),
      color: const ColorConverter().fromJson((json['color'] as num).toInt()),
      width: (json['width'] as num).toDouble(),
      isEraser: json['isEraser'] as bool? ?? false,
    );

Map<String, dynamic> _$$StrokeImplToJson(_$StrokeImpl instance) =>
    <String, dynamic>{
      'points': const OffsetListConverter().toJson(instance.points),
      'color': const ColorConverter().toJson(instance.color),
      'width': instance.width,
      'isEraser': instance.isEraser,
    };
