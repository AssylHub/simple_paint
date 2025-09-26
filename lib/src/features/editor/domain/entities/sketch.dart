// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_entity.dart';
import 'package:simple_paint/src/core/utils/converters/offset_converter.dart';
import 'package:simple_paint/src/features/editor/data/models/sketch_dto.dart';
import 'package:simple_paint/src/features/editor/domain/entities/stroke.dart';

part 'sketch.freezed.dart';
part 'sketch.g.dart';

@freezed
abstract class Sketch with _$Sketch {
  @Implements<BaseEntity>()
  const Sketch._();
  const factory Sketch({
    required String id,
    required List<Stroke> strokes,
    @SizeConverter() required Size canvasSize,
    required DateTime updatedAt,
    String? backgroundPath,
  }) = _Sketch;

  factory Sketch.fromJson(Map<String, dynamic> json) => _$SketchFromJson(json);

  SketchDto toDto() => SketchDto(
        id: id,
        strokes: strokes.map((i) => i.toDto()).toList(),
        width: canvasSize.width,
        height: canvasSize.height,
        updatedAt: updatedAt,
      );
}
