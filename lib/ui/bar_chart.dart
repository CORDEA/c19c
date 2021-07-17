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

  final BarChartSeries<X> _chartSeries;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
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
  factory BarChartSeries(Color color, List<BarChartPoint<X>> points) =
      _BarChartSeries<X>;
}

@freezed
class BarChartPoint<X extends Comparable<X>> with _$BarChartPoint<X> {
  factory BarChartPoint(X x, num y) = _BarChartPoint<X>;
}
