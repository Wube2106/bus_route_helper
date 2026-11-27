import 'package:flutter/material.dart';

import '../../routes/domain/models.dart';

class RoutePainter extends CustomPainter {
  RoutePainter({
    required this.stops,
    required this.lineColor,
    required this.dotColor,
    required this.textColor,
  });

  final List<Stop> stops;
  final Color lineColor;
  final Color dotColor;
  final Color textColor;

  @override
  void paint(Canvas canvas, Size size) {
    if (stops.isEmpty) return;
    const padding = 40.0;
    final lats = stops.map((s) => s.latitude);
    final lons = stops.map((s) => s.longitude);
    final minLat = lats.reduce((a, b) => a < b ? a : b);
    final maxLat = lats.reduce((a, b) => a > b ? a : b);
    final minLon = lons.reduce((a, b) => a < b ? a : b);
    final maxLon = lons.reduce((a, b) => a > b ? a : b);
    final latSpan = (maxLat - minLat) == 0 ? 1 : maxLat - minLat;
    final lonSpan = (maxLon - minLon) == 0 ? 1 : maxLon - minLon;

    Offset toPoint(Stop s) => Offset(
          padding + (s.longitude - minLon) / lonSpan * (size.width - 2 * padding),
          size.height -
              padding -
              (s.latitude - minLat) / latSpan * (size.height - 2 * padding),
        );

    final points = stops.map(toPoint).toList();
    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (final p in points.skip(1)) {
      path.lineTo(p.dx, p.dy);
    }
    canvas.drawPath(path, linePaint);

    for (var i = 0; i < points.length; i++) {
      final isEnd = i == 0 || i == points.length - 1;
      canvas.drawCircle(points[i], isEnd ? 9 : 7, Paint()..color = Colors.white);
      canvas.drawCircle(
        points[i],
        isEnd ? 9 : 7,
        Paint()
          ..color = dotColor
          ..style = isEnd ? PaintingStyle.fill : PaintingStyle.stroke
          ..strokeWidth = 3,
      );
      final text = TextPainter(
        text: TextSpan(
          text: stops[i].name,
          style: TextStyle(color: textColor, fontSize: 12),
        ),
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: 110);
      final fitsOnRight = points[i].dx + 12 + text.width <= size.width - 8;
      final dx = fitsOnRight
          ? points[i].dx + 12
          : points[i].dx - 12 - text.width;
      canvas.save();
      canvas.translate(dx, points[i].dy - 7);
      text.paint(canvas, Offset.zero);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(RoutePainter oldDelegate) =>
      oldDelegate.stops != stops ||
      oldDelegate.lineColor != lineColor ||
      oldDelegate.dotColor != dotColor ||
      oldDelegate.textColor != textColor;
}