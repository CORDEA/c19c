import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_chart.freezed.dart';

const _barMarginBias = 0.3;

class Chart<X extends Comparable<X>> extends StatelessWidget {
  const Chart({
    Key? key,
    required BarChartSeries<X> chartSeries,
  })  : _chartSeries = chartSeries,
        super(key: key);

  final BarChartSeries<X> _chartSeries;

  @override
  Widget build(BuildContext context) {
    final painters = _XAxisTextPainters(_chartSeries.points);
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: BarChart(chartSeries: _chartSeries)),
        SizedBox(
          height: painters.maxHeight().toDouble(),
          child: _XAxis(painters: painters),
        ),
      ],
    );
  }
}

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

  factory BarChartSeries(
    Color color,
    List<BarChartPoint<X>> points,
  ) = _BarChartSeries<X>;

  num maxY() => points.map((e) => e.y).max;
}

@freezed
class BarChartPoint<X extends Comparable<X>> with _$BarChartPoint<X> {
  factory BarChartPoint(X x, num y) = _BarChartPoint<X>;
}

class _XAxis extends StatelessWidget {
  const _XAxis({
    Key? key,
    required _XAxisTextPainters painters,
  })  : _painters = painters,
        super(key: key);

  final _XAxisTextPainters _painters;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _XAxisPainter(_painters));
  }
}

class _XAxisPainter extends CustomPainter {
  _XAxisPainter(this._painters);

  final _XAxisTextPainters _painters;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty || _painters.painters.isEmpty) {
      return;
    }

    final length = _painters.painters.length;
    final totalMargin = size.width * _barMarginBias;
    final margin = totalMargin / (length - 1);
    final drawableWidth = (size.width - totalMargin) / length;

    final maxWidth = _painters.maxWidth();
    final idealLabels = ((size.width) / maxWidth).floor();
    final steps = (length / idealLabels).ceil();

    final Map<int, double> indexes = {};
    var x = drawableWidth / 2;
    var i = 0;
    while (i < length) {
      if (x < maxWidth / 2) {
        x += drawableWidth + margin;
        i += 1;
        continue;
      }
      if (size.width < x + maxWidth / 2) {
        break;
      }
      indexes[i] = x;
      x += (drawableWidth + margin) * steps;
      i += steps;
    }

    for (final entry in indexes.entries) {
      final paint = _painters.painters[entry.key];
      paint.paint(
        canvas,
        Offset(entry.value - paint.width / 2, 0),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return !identical(this, oldDelegate) ||
        (oldDelegate is! _XAxisPainter ||
            !listEquals(_painters.painters, oldDelegate._painters.painters));
  }
}

class _XAxisTextPainters {
  _XAxisTextPainters(List<BarChartPoint> points)
      : painters = points
            .map(
              (e) => TextPainter(
                text: TextSpan(
                    text: e.x.toString(),
                    style: TextStyle(color: Colors.black)),
                textDirection: TextDirection.ltr,
              )..layout(),
            )
            .toList(growable: false);

  final List<TextPainter> painters;

  num maxWidth() => painters.map<num>((e) => e.width).max;

  num maxHeight() => painters.map<num>((e) => e.height).max;
}
