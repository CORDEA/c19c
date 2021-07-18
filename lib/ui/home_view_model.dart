import 'package:c19c/ui/bar_chart.dart';
import 'package:c19c/usecase/get_total_patients_use_case.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  create: (context) => HomeViewModel(context.read()),
);

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._getTotalPatientsUseCase) {
    _load(forceRefresh: false);
  }

  final GetTotalPatientsUseCase _getTotalPatientsUseCase;

  List<BarChartPoint<DateTime>> _barChartPoints = [];

  List<BarChartPoint<DateTime>> get barChartPoints => _barChartPoints;

  Future<void> _load({required bool forceRefresh}) async {
    final Map<DateTime, int> items;
    try {
      items = await _getTotalPatientsUseCase.execute(
        forceRefresh: forceRefresh,
      );
    } catch (_) {
      return;
    }

    _barChartPoints = items.entries
        .map((e) => BarChartPoint(e.key, e.value))
        .take(30)
        .toList(growable: false);
    notifyListeners();
  }
}
