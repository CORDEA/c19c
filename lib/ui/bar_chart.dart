import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_chart.freezed.dart';

class BarChart<X extends Comparable<X>> extends StatelessWidget {
  const BarChart({
    Key? key,
    required BarChartSeries<X> chartSeries,
  })  : _chartSeries = chartSeries,
        super(key: key);

  final BarChartSeries<X> _chartSeries;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BarChartPainter(_chartSeries),
    );
  }
}

class _BarChartPainter<X extends Comparable<X>> extends CustomPainter {
  _BarChartPainter(this._chartSeries);

  static const _barMarginBias = 0.3;

  final BarChartSeries<X> _chartSeries;
  late final _paint = Paint()..color = _chartSeries.color;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty || _chartSeries.points.isEmpty) {
      return;
    }

    final bars = _chartSeries.points.length;
    final totalMargin = size.width * _barMarginBias;
    final margin = totalMargin / (bars - 1);
    final barSize = (size.width - totalMargin) / bars;
    final yBasis = size.height / _chartSeries.maxY();

    var x = 0.0;
    for (final point in _chartSeries.points) {
      final rect = RRect.fromLTRBR(
        x,
        size.height - (yBasis * point.y),
        x + barSize,
        size.height,
        Radius.circular(2),
      );
      canvas.drawRRect(rect, _paint);
      x += margin + barSize;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return !identical(this, oldDelegate) ||
        (oldDelegate is! _BarChartPainter<X> ||
            oldDelegate._chartSeries != _chartSeries);
  }
}

@freezed
class BarChartSeries<X extends Comparable<X>> with _$BarChartSeries<X> {
  BarChartSeries._();

  factory BarChartSeries(Color color, List<BarChartPoint<X>> points) =
      _BarChartSeries<X>;

  num maxY() => points.map((e) => e.y).max;
}

@freezed
class BarChartPoint<X extends Comparable<X>> with _$BarChartPoint<X> {
  factory BarChartPoint(X x, num y) = _BarChartPoint<X>;
}
