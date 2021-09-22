import 'package:covid_app/data/repository/covid_repository.dart';
import 'package:covid_app/presentation/screens/covid_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CovidApp(covidRepository: CovidRepository()));
}

class CovidApp extends StatelessWidget {
  CovidApp({required CovidRepository covidRepository})
      : _covidRepository = covidRepository;

  final CovidRepository _covidRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _covidRepository,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: CovidDataScreen(),
      ),
    );
  }
}
