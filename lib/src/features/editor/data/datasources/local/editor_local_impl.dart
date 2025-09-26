import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_paint/src/features/editor/data/datasources/local/i_editor_local.dart';
import 'package:simple_paint/src/features/editor/domain/entities/sketch.dart';
import 'package:simple_paint/src/features/editor/domain/entities/stroke.dart';

class EditorLocalDataSource implements IEditorLocalDataSource {
  final _sketchController = StreamController<Sketch>.broadcast();
  Sketch _currentSketch = Sketch(
    id: 'temp',
    strokes: const [],
    canvasSize: Size(0, 0),
    updatedAt: DateTime.now(),
  );
  final _undone = <Stroke>[];

  late Color _color;
  late double _width;
  bool _eraser = false;
  Stroke? _currentStroke;

  EditorLocalDataSource() {
    _sketchController.add(_currentSketch);
  }

  @override
  Sketch get current => _currentSketch;
  @override
  Stream<Sketch> get stream => _sketchController.stream;

  @override
  void newCanvas(Size size, {String? backgroundPath}) {
    _currentSketch = Sketch(
      id: 'temp',
      strokes: const [],
      canvasSize: size,
      updatedAt: DateTime.now(),
      backgroundPath: backgroundPath,
    );
    _sketchController.add(_currentSketch);
    _undone.clear();
  }

  @override
  void setTool(
      {required Color color, required double width, bool isEraser = false}) {
    _color = color;
    _width = width;
    _eraser = isEraser;
  }

  @override
  void startStroke(Offset p) {
    _currentStroke =
        Stroke(points: [p], color: _color, width: _width, isEraser: _eraser);
  }

  @override
  void addPoint(Offset p) {
    final s = _currentStroke;
    if (s == null) return;
    s.points.add(p);
    // push a lightweight “changed” state to repaint previews if needed
  }

  @override
  void endStroke() {
    final s = _currentStroke;
    if (s == null) return;
    final updated = List<Stroke>.from(current.strokes)..add(s);
    _currentSketch = Sketch(
      id: current.id,
      strokes: updated,
      canvasSize: current.canvasSize,
      updatedAt: DateTime.now(),
      backgroundPath: current.backgroundPath,
    );
    _sketchController.add(_currentSketch);
    _undone.clear();
    _currentStroke = null;
  }

  @override
  bool canUndo() => current.strokes.isNotEmpty;
  @override
  bool canRedo() => _undone.isNotEmpty;

  @override
  void undo() {
    if (!canUndo()) return;
    final last = current.strokes.last;
    final rest = List<Stroke>.from(current.strokes)..removeLast();
    _undone.add(last);
    _currentSketch = current.copyWith(strokes: rest, updatedAt: DateTime.now());
    _sketchController.add(_currentSketch);
  }

  @override
  void redo() {
    if (!canRedo()) return;
    final restored = _undone.removeLast();
    final list = List<Stroke>.from(current.strokes)..add(restored);
    _currentSketch = current.copyWith(strokes: list, updatedAt: DateTime.now());
    _sketchController.add(_currentSketch);
  }

  @override
  void clear() {
    _undone
      ..clear()
      ..addAll(current.strokes);
    _currentSketch =
        current.copyWith(strokes: const [], updatedAt: DateTime.now());
    _sketchController.add(_currentSketch);
  }

  @override
  Future<Uint8List> exportPng(
      {required GlobalKey repaintKey, double pixelRatio = 3.0}) async {
    final boundary =
        repaintKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: pixelRatio);
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  void dispose() {
    _sketchController.close();
  }
}
