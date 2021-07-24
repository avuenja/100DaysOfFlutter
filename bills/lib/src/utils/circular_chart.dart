import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  double currentProgress;
  Color color;

  CircleProgress({
    required this.currentProgress,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 10
      ..color = this.color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 10;

    canvas.drawCircle(
      center,
      radius,
      outerCircle,
    );

    double angle = 2 * pi * (currentProgress / 100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      angle,
      false,
      completeArc,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CircularChart extends StatelessWidget {
  final double progress;
  final Color color;
  final double? size;

  const CircularChart({
    required this.progress,
    required this.color,
    this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CircleProgress(
        currentProgress: this.progress,
        color: this.color,
      ),
      child: Container(
        width: this.size ?? 200.0,
        height: this.size ?? 200.0,
      ),
    );
  }
}
