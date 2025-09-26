import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:simple_paint/src/features/editor/domain/entities/sketch.dart';

abstract class IEditorLocalDataSource {
  Sketch get current;
  Stream<Sketch> get stream;

  void newCanvas(Size size, {String? backgroundPath});
  void setTool(
      {required Color color, required double width, bool isEraser = false});
  void startStroke(Offset p);
  void addPoint(Offset p);
  void endStroke();

  bool canUndo();
  bool canRedo();
  void undo();
  void redo();
  void clear();

  Future<Uint8List> exportPng(
      {required GlobalKey repaintKey, double pixelRatio});

  void dispose();
}
