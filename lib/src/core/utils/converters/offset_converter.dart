// lib/src/features/editor/data/models/converters.dart
import 'dart:ui' show Offset, Color;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OffsetConverter implements JsonConverter<Offset, Map<String, double>> {
  const OffsetConverter();

  @override
  Offset fromJson(Map<String, double> json) =>
      Offset(json['dx'] ?? 0.0, json['dy'] ?? 0.0);

  @override
  Map<String, double> toJson(Offset object) =>
      {'dx': object.dx, 'dy': object.dy};
}

class OffsetListConverter
    implements JsonConverter<List<Offset>, List<Map<String, double>>> {
  const OffsetListConverter();

  @override
  List<Offset> fromJson(List<Map<String, double>> json) =>
      json.map((e) => Offset(e['dx'] ?? 0.0, e['dy'] ?? 0.0)).toList();

  @override
  List<Map<String, double>> toJson(List<Offset> object) =>
      object.map((o) => {'dx': o.dx, 'dy': o.dy}).toList();
}

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int value) => Color(value);

  @override
  int toJson(Color color) => color.value;
}

class SizeConverter implements JsonConverter<Size, Map<String, double>> {
  const SizeConverter();

  @override
  Size fromJson(Map<String, double> json) =>
      Size(json['width'] ?? 0.0, json['height'] ?? 0.0);

  @override
  Map<String, double> toJson(Size object) =>
      {'width': object.width, 'height': object.height};
}
