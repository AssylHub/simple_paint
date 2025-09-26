import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_entity.dart';
import 'package:simple_paint/src/core/utils/converters/offset_converter.dart';
import 'package:simple_paint/src/features/editor/data/models/stroke_dto.dart';

part 'stroke.freezed.dart';
part 'stroke.g.dart';

@freezed
abstract class Stroke with _$Stroke {
  @Implements<BaseEntity>()
  const Stroke._();
  const factory Stroke({
    @OffsetListConverter() required List<Offset> points,
    @ColorConverter() required Color color,
    required double width,
    @Default(false) bool isEraser,
  }) = _Stroke;

  factory Stroke.fromJson(Map<String, dynamic> json) => _$StrokeFromJson(json);

  StrokeDto toDto() => StrokeDto(
        points: points,
        color: color,
        width: width,
      );
}
