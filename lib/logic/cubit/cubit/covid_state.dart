part of 'covid_cubit.dart';

enum CovidStatus { initial, loading, success, failure }

extension CovidStatusX on CovidStatus {
  bool get isInitial => this == CovidStatus.initial;
  bool get isLoading => this == CovidStatus.loading;
  bool get isSuccess => this == CovidStatus.success;
  bool get isFailure => this == CovidStatus.failure;
}

class CovidState extends Equatable {
  CovidState({this.status = CovidStatus.initial, CovidDataDto? covidDataDto})
      : covidDataDto = covidDataDto ?? CovidDataDto();

  final CovidStatus status;
  final CovidDataDto covidDataDto;

  CovidState copyWith({CovidStatus? status, CovidDataDto? covidDataDto}) {
    return CovidState(
        status: status ?? this.status,
        covidDataDto: covidDataDto ?? this.covidDataDto);
  }

  @override
  List<Object> get props => [status, covidDataDto];
}
