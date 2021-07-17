import 'package:c19c/repository/covid19_repository.dart';
import 'package:provider/provider.dart';

final homeViewModelProvider = ProxyProvider<Covid19Repository, HomeViewModel>(
  update: (_, repository, viewModel) => viewModel ?? HomeViewModel(repository),
);

class HomeViewModel {
  HomeViewModel(this._repository);

  final Covid19Repository _repository;
}
