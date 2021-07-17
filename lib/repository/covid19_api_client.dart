import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

final apiClientProvider =
    Provider<Covid19ApiClient>(create: (_) => _Covid19ApiClient());

abstract class Covid19ApiClient {
  Future<http.Response> get({
    required String? dataName,
    required String? date,
  });
}

class _Covid19ApiClient implements Covid19ApiClient {
  static const _authority = 'opendata.corona.go.jp';

  @override
  Future<http.Response> get({
    required String? dataName,
    required String? date,
  }) {
    final uri = Uri.https(
      _authority,
      '/api/Covid19JapanAll',
      {
        if (dataName != null) 'dataName': dataName,
        if (date != null) 'date': date,
      },
    );
    return http.get(uri);
  }
}
