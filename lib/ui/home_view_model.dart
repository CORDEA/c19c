import 'package:c19c/repository/covid19_repository.dart';
import 'package:c19c/repository/covid19_response.dart';
import 'package:c19c/ui/bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  create: (context) => HomeViewModel(context.read()),
);

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._repository) {
    _load(forceRefresh: false);
  }

  final Covid19Repository _repository;

  List<BarChartPoint<DateTime>> _barChartPoints = [];

  List<BarChartPoint<DateTime>> get barChartPoints => _barChartPoints;

  Future<void> _load({required bool forceRefresh}) async {
    final List<Covid19ItemResponse> items;
    try {
      items = await _repository.findAll(
        dataName: null,
        date: null,
        forceRefresh: forceRefresh,
      );
    } catch (_) {
      return;
    }

    _barChartPoints = items
        .map(
          (e) => BarChartPoint(
            DateTime.parse(e.date),
            e.numberOfPatients,
          ),
        )
        .take(30)
        .toList(growable: false);
    notifyListeners();
  }
}
