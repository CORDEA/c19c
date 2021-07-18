import 'package:c19c/ui/bar_chart.dart';
import 'package:c19c/ui/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [homeViewModelProvider],
      child: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  static final _dateFormatter = DateFormat('MM/dd');
  static final _numberFormatter = NumberFormat.compact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Selector<HomeViewModel, List<BarChartPoint<DateTime>>>(
              builder: (_, points, __) => Chart(
                chartSeries: BarChartSeries<DateTime>(
                  Colors.blue,
                  points,
                  xAxisFormatter: _dateFormatter.format,
                  yAxisFormatter: _numberFormatter.format,
                ),
              ),
              selector: (_, viewModel) => viewModel.barChartPoints,
            ),
          ),
        ],
      ),
    );
  }
}
