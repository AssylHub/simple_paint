// data/editor/models/stroke_dto.dart
import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_paint/src/core/base/base_models/base_dto.dart';
import 'package:simple_paint/src/core/utils/converters/offset_converter.dart';

part 'stroke_dto.freezed.dart';
part 'stroke_dto.g.dart';

@freezed
abstract class StrokeDto with _$StrokeDto {
  @Implements<BaseDto>()
  const StrokeDto._();
  const factory StrokeDto({
    @OffsetListConverter() required List<Offset> points,
    @ColorConverter() required Color color,
    required double width,
    @Default(false) bool isEraser,
  }) = _StrokeDto;

  factory StrokeDto.fromJson(Map<String, dynamic> json) =>
      _$StrokeDtoFromJson(json);
}
