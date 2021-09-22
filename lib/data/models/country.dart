import 'package:equatable/equatable.dart';

import 'premium.dart';

class Country extends Equatable {
  final String? id;
  final String? country;
  final String? countryCode;
  final String? slug;
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;
  final String? date;
  final Premium? premium;

  const Country({
    this.id,
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
    this.premium,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json['ID'] as String?,
        country: json['Country'] as String?,
        countryCode: json['CountryCode'] as String?,
        slug: json['Slug'] as String?,
        newConfirmed: json['NewConfirmed'] as int?,
        totalConfirmed: json['TotalConfirmed'] as int?,
        newDeaths: json['NewDeaths'] as int?,
        totalDeaths: json['TotalDeaths'] as int?,
        newRecovered: json['NewRecovered'] as int?,
        totalRecovered: json['TotalRecovered'] as int?,
        date: json['Date'] as String?,
        premium: null,
      );

  Map<String, dynamic> toJson() => {
        'ID': id,
        'Country': country,
        'CountryCode': countryCode,
        'Slug': slug,
        'NewConfirmed': newConfirmed,
        'TotalConfirmed': totalConfirmed,
        'NewDeaths': newDeaths,
        'TotalDeaths': totalDeaths,
        'NewRecovered': newRecovered,
        'TotalRecovered': totalRecovered,
        'Date': date,
        'Premium': premium?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      country,
      countryCode,
      slug,
      newConfirmed,
      totalConfirmed,
      newDeaths,
      totalDeaths,
      newRecovered,
      totalRecovered,
      date,
      premium,
    ];
  }
}
