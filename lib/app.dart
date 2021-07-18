import 'package:c19c/repository/covid19_api_client.dart';
import 'package:c19c/repository/covid19_repository.dart';
import 'package:c19c/ui/home.dart';
import 'package:c19c/usecase/get_total_patients_use_case.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        apiClientProvider,
        covid19RepositoryProvider,
        getTotalPatientsUseCaseProvider,
      ],
      child: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'c19c',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
