import 'package:flutter/material.dart';
import 'package:simple_paint/src/features/editor/domain/entities/stroke.dart';

class PainterPage extends StatefulWidget {
  const PainterPage({super.key});

  @override
  State<PainterPage> createState() => _PainterPageState();
}

class _PainterPageState extends State<PainterPage> {
  // store all paths
  final List<Stroke> _lines = [];
  Stroke? _currentLine;

  Color _selectedColor = Colors.black;
  double _strokeWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Painter"),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => setState(() {
              _lines.clear();
            }),
          ),
        ],
      ),
      body: Column(
        children: [
          // toolbar
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.color_lens),
                onPressed: () async {
                  // example: cycle between colors
                  setState(() {
                    _selectedColor = _selectedColor == Colors.black
                        ? Colors.red
                        : Colors.black;
                  });
                },
              ),
              Expanded(
                child: Slider(
                  min: 1,
                  max: 20,
                  value: _strokeWidth,
                  onChanged: (v) => setState(() => _strokeWidth = v),
                ),
              ),
            ],
          ),
          // drawing canvas
          Expanded(
            child: GestureDetector(
              onPanStart: (details) {
                setState(() {
                  _currentLine = Stroke(
                    points: [details.localPosition],
                    color: _selectedColor,
                    width: _strokeWidth,
                  );
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  _currentLine = _currentLine?.copyWith(
                    points: List.from(_currentLine!.points)
                      ..add(details.localPosition),
                  );
                });
              },
              onPanEnd: (details) {
                setState(() {
                  if (_currentLine != null) {
                    _lines.add(_currentLine!);
                  }
                  _currentLine = null;
                });
              },
              child: CustomPaint(
                painter:
                    _DrawingPainter(lines: _lines, currentLine: _currentLine),
                size: Size.infinite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawingPainter extends CustomPainter {
  final List<Stroke> lines;
  final Stroke? currentLine;

  _DrawingPainter({required this.lines, this.currentLine});

  @override
  void paint(Canvas canvas, Size size) {
    for (final line in [...lines, if (currentLine != null) currentLine!]) {
      final paint = Paint()
        ..color = line.color
        ..strokeWidth = line.width
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;
      for (int i = 0; i < line.points.length - 1; i++) {
        canvas.drawLine(line.points[i], line.points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DrawingPainter oldDelegate) =>
      oldDelegate.lines != lines || oldDelegate.currentLine != currentLine;
}
