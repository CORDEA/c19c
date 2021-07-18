import 'package:c19c/repository/covid19_repository.dart';
import 'package:c19c/repository/covid19_response.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';

part 'get_total_patients_use_case.freezed.dart';

final getTotalPatientsUseCaseProvider =
    ProxyProvider<Covid19Repository, GetTotalPatientsUseCase>(
  update: (_, repository, useCase) =>
      useCase ?? GetTotalPatientsUseCase(repository),
);

class GetTotalPatientsUseCase {
  GetTotalPatientsUseCase(this._repository);

  final Covid19Repository _repository;

  Future<List<Covid19TotalPatients>> execute({
    required bool forceRefresh,
  }) {
    return _repository
        .findAll(dataName: null, date: null, forceRefresh: forceRefresh)
        .then((value) => compute(_toCovid19TotalPatients, value));
  }
}

List<Covid19TotalPatients> _toCovid19TotalPatients(
  List<Covid19ItemResponse> response,
) {
  final map = response.fold<Map<DateTime, int>>(
    {},
    (previousValue, element) {
      previousValue[element.date] =
          (previousValue[element.date] ?? 0) + element.numberOfPatients;
      return previousValue;
    },
  );
  return map.entries
      .sorted((a, b) => a.key.compareTo(b.key))
      .foldIndexed<List<Covid19TotalPatients>>(
    [],
    (index, previous, element) {
      if (index == 0) {
        return [
          Covid19TotalPatients(element.key, element.value, element.value)
        ];
      }
      return previous +
          [
            Covid19TotalPatients(
              element.key,
              element.value,
              element.value - previous[index - 1].totalPatients,
            )
          ];
    },
  );
}

@freezed
class Covid19TotalPatients with _$Covid19TotalPatients {
  factory Covid19TotalPatients(
    DateTime date,
    int totalPatients,
    int todayPatients,
  ) = _Covid19TotalPatients;
}
