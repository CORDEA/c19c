import 'dart:convert';

import 'package:c19c/repository/covid19_api_client.dart';
import 'package:c19c/repository/covid19_response.dart';
import 'package:provider/provider.dart';

final covid19RepositoryProvider =
    ProxyProvider<Covid19ApiClient, Covid19Repository>(
  update: (_, apiClient, repository) =>
      repository ?? _Covid19Repository(apiClient),
);

abstract class Covid19Repository {
  Future<List<Covid19ItemResponse>> findAll({
    required String? dataName,
    required String? date,
    required bool forceRefresh,
  });
}

class _Covid19Repository implements Covid19Repository {
  _Covid19Repository(this._apiClient);

  final Covid19ApiClient _apiClient;

  List<Covid19ItemResponse>? _cachedItems;

  @override
  Future<List<Covid19ItemResponse>> findAll({
    required String? dataName,
    required String? date,
    required bool forceRefresh,
  }) async {
    final cache = _cachedItems;
    if (!forceRefresh && cache != null) {
      return cache;
    }
    try {
      final items = await _apiClient
          .get(dataName: dataName, date: date)
          .then(
            (value) => Covid19Response.fromJson(jsonDecode(value.body)),
          )
          .then((value) => value.itemList);
      _cachedItems = items;
      return items;
    } catch (_) {
      _cachedItems = null;
      rethrow;
    }
  }
}
