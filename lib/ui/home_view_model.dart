import 'package:c19c/repository/covid19_repository.dart';
import 'package:provider/provider.dart';

final homeViewModelProvider = ProxyProvider<Covid19Repository, HomeViewModel>(
  update: (_, repository, viewModel) => viewModel ?? HomeViewModel(repository),
);

class HomeViewModel {
  HomeViewModel(this._repository) {
    _load(forceRefresh: false);
  }

  final Covid19Repository _repository;

  Future<void> _load({required bool forceRefresh}) async {
    try {
      final items = await _repository.findAll(
        dataName: null,
        date: null,
        forceRefresh: forceRefresh,
      );
    } catch (_) {
      return;
    }
  }
}
