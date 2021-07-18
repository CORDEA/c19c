import 'package:c19c/repository/covid19_repository.dart';
import 'package:provider/provider.dart';

final getTotalPatientsUseCaseProvider =
    ProxyProvider<Covid19Repository, GetTotalPatientsUseCase>(
  update: (_, repository, useCase) =>
      useCase ?? GetTotalPatientsUseCase(repository),
);

class GetTotalPatientsUseCase {
  GetTotalPatientsUseCase(this._repository);

  final Covid19Repository _repository;

  Future<Map<DateTime, int>> execute({
    required bool forceRefresh,
  }) {
    return _repository
        .findAll(dataName: null, date: null, forceRefresh: forceRefresh)
        .then(
      (value) {
        return value.fold<Map<DateTime, int>>(
          {},
          (previousValue, element) {
            previousValue[element.date] =
                (previousValue[element.date] ?? 0) + element.numberOfPatients;
            return previousValue;
          },
        );
      },
    );
  }
}
