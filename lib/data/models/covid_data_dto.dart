import 'package:equatable/equatable.dart';

import 'country.dart';
import 'global.dart';

class CovidDataDto extends Equatable {
  final String? id;
  final String? message;
  final Global? global;
  final List<Country>? countries;
  final String? date;

  const CovidDataDto({
    this.id,
    this.message,
    this.global,
    this.countries,
    this.date,
  });

    factory CovidDataDto.fromRepository(CovidDataDto covidDataDto) {
    return CovidDataDto(
      id: covidDataDto.id,
      message: covidDataDto.message,
      global: covidDataDto.global,
      countries: covidDataDto.countries,
      date: covidDataDto.date
    );
  }

  factory CovidDataDto.fromJson(Map<String, dynamic> json) => CovidDataDto(
        id: json['ID'] as String?,
        message: json['Message'] as String?,
        global: json['Global'] == null
            ? null
            : Global.fromJson(json['Global'] as Map<String, dynamic>),
        countries: (json['Countries'] as List<dynamic>?)
            ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
            .toList(),
        date: json['Date'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'ID': id,
        'Message': message,
        'Global': global?.toJson(),
        'Countries': countries?.map((e) => e.toJson()).toList(),
        'Date': date,
      };

  @override
  List<Object?> get props => [id, message, global, countries, date];
}
