import 'package:covid_app/core/constants/constants.dart';
import 'package:covid_app/data/models/covid_data_dto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidRequestFailure implements Exception {}

class CovidApiProvider {
  Future<CovidDataDto> fetchCovidData() async {
    var covidDataRequest = Uri.https(Constants.BASE_URL, "summary");
    var covidDataResponse = await http.get(covidDataRequest);

    if (covidDataResponse.statusCode != 200) {
      throw CovidRequestFailure();
    }

    return CovidDataDto.fromJson(
        jsonDecode(covidDataResponse.body) as Map<String, dynamic>);
  }
}
