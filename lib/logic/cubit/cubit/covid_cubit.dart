import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:covid_app/data/models/covid_data_dto.dart';
import 'package:covid_app/data/repository/covid_repository.dart';
import 'package:equatable/equatable.dart';

part 'covid_state.dart';

class CovidCubit extends Cubit<CovidState> {
  CovidCubit(this._covidRepository) : super(CovidState());

  final CovidRepository _covidRepository;

  Future<void> fetchCovidData() async {
    emit(state.copyWith(status: CovidStatus.loading));

    try {
      final covidData =
          CovidDataDto.fromRepository(await _covidRepository.fethCovidData());

      emit(
          state.copyWith(status: CovidStatus.success, covidDataDto: covidData));
    } on Exception {
      emit(state.copyWith(status: CovidStatus.failure));
    }
  }
}
