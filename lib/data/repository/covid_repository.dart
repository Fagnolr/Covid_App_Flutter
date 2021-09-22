import 'package:covid_app/data/data_provider/covid_api_provider.dart';
import 'package:covid_app/data/models/covid_data_dto.dart';

class CovidRepository {
  CovidRepository({CovidApiProvider? covidApi})
      : _covidApiProvider = covidApi ?? CovidApiProvider();

  final CovidApiProvider _covidApiProvider;

  Future<CovidDataDto> fethCovidData() async {
    return _covidApiProvider.fetchCovidData();
  }
}
