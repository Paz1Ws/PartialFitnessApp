
import 'package:flutter/material.dart';

class CustomBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2;

    // Calculate line positions based on container size
    final lineWidth = size.width / 3;

    // Draw the first line
    canvas.drawLine(
      Offset(lineWidth, 0),
      Offset(lineWidth, size.height),
      paint,
    );

    // Draw the second line
    canvas.drawLine(
      Offset(lineWidth * 3, 0),
      Offset(lineWidth * 3, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  bool hitTest(Offset position) {
    return false;
  }
}
