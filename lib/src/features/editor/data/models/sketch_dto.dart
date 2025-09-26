import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_dto.dart';
import 'package:simple_paint/src/features/editor/domain/entities/sketch.dart';
import 'package:simple_paint/src/features/editor/domain/entities/stroke.dart';
import 'stroke_dto.dart';

part 'sketch_dto.freezed.dart';
part 'sketch_dto.g.dart';

@freezed
abstract class SketchDto with _$SketchDto {
  @Implements<BaseDto>()
  const SketchDto._();
  const factory SketchDto({
    required String id,
    required List<StrokeDto> strokes,
    required double width,
    required double height,
    required DateTime updatedAt,
    String? backgroundPath,
    String? storagePath, // filled by remote after upload
    String? previewUrl, // optional cached download URL
  }) = _SketchDto;

  factory SketchDto.fromJson(Map<String, dynamic> json) =>
      _$SketchDtoFromJson(json);

  Sketch toDomain() => Sketch(
        id: id,
        strokes: strokes
            .map((s) => Stroke(
                  points: s.points,
                  color: s.color,
                  width: s.width,
                  isEraser: s.isEraser,
                ))
            .toList(),
        canvasSize: Size(width, height),
        updatedAt: updatedAt,
        backgroundPath: backgroundPath,
      );
}
