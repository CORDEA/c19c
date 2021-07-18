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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Selector<HomeViewModel, LoadingState>(
        selector: (_, viewModel) => viewModel.loadingState,
        builder: (_, loadingState, __) {
          switch (loadingState) {
            case LoadingState.loading:
              return const Center(child: CircularProgressIndicator());
            case LoadingState.loaded:
              return const _HomeLoadedPage();
          }
        },
      ),
    );
  }
}

class _HomeLoadedPage extends StatelessWidget {
  const _HomeLoadedPage({Key? key}) : super(key: key);

  static final _dateFormatter = DateFormat('MM/dd');
  static final _numberFormatter = NumberFormat.compact();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
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
