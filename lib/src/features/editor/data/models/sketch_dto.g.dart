// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SketchDtoImpl _$$SketchDtoImplFromJson(Map<String, dynamic> json) =>
    _$SketchDtoImpl(
      id: json['id'] as String,
      strokes: (json['strokes'] as List<dynamic>)
          .map((e) => StrokeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      backgroundPath: json['backgroundPath'] as String?,
      storagePath: json['storagePath'] as String?,
      previewUrl: json['previewUrl'] as String?,
    );

Map<String, dynamic> _$$SketchDtoImplToJson(_$SketchDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'strokes': instance.strokes,
      'width': instance.width,
      'height': instance.height,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'backgroundPath': instance.backgroundPath,
      'storagePath': instance.storagePath,
      'previewUrl': instance.previewUrl,
    };
