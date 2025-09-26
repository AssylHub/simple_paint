// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SketchImpl _$$SketchImplFromJson(Map<String, dynamic> json) => _$SketchImpl(
      id: json['id'] as String,
      strokes: (json['strokes'] as List<dynamic>)
          .map((e) => Stroke.fromJson(e as Map<String, dynamic>))
          .toList(),
      canvasSize: const SizeConverter()
          .fromJson(json['canvasSize'] as Map<String, double>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      backgroundPath: json['backgroundPath'] as String?,
    );

Map<String, dynamic> _$$SketchImplToJson(_$SketchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'strokes': instance.strokes,
      'canvasSize': const SizeConverter().toJson(instance.canvasSize),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'backgroundPath': instance.backgroundPath,
    };
