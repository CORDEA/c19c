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

  LoadingState _loadingState = LoadingState.loading;

  LoadingState get loadingState => _loadingState;

  List<BarChartPoint<DateTime>> _barChartPoints = [];

  List<BarChartPoint<DateTime>> get barChartPoints => _barChartPoints;

  Future<void> _load({required bool forceRefresh}) async {
    _loadingState = LoadingState.loading;
    final List<Covid19TotalPatients> items;
    try {
      items = await _getTotalPatientsUseCase.execute(
        forceRefresh: forceRefresh,
      );
    } catch (_) {
      return;
    }

    final basis = DateTime.now().subtract(Duration(days: 30));
    _barChartPoints = items
        .skipWhile((value) => value.date.isBefore(basis))
        .map((e) => BarChartPoint(e.date, e.todayPatients))
        .toList(growable: false);
    _loadingState = LoadingState.loaded;
    notifyListeners();
  }
}

enum LoadingState {
  loading,
  loaded,
}
