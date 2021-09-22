import 'package:equatable/equatable.dart';

class Global extends Equatable {
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;
  final String? date;

  const Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  factory Global.fromJson(Map<String, dynamic> json) => Global(
        newConfirmed: json['NewConfirmed'] as int?,
        totalConfirmed: json['TotalConfirmed'] as int?,
        newDeaths: json['NewDeaths'] as int?,
        totalDeaths: json['TotalDeaths'] as int?,
        newRecovered: json['NewRecovered'] as int?,
        totalRecovered: json['TotalRecovered'] as int?,
        date: json['Date'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'NewConfirmed': newConfirmed,
        'TotalConfirmed': totalConfirmed,
        'NewDeaths': newDeaths,
        'TotalDeaths': totalDeaths,
        'NewRecovered': newRecovered,
        'TotalRecovered': totalRecovered,
        'Date': date,
      };

  @override
  List<Object?> get props {
    return [
      newConfirmed,
      totalConfirmed,
      newDeaths,
      totalDeaths,
      newRecovered,
      totalRecovered,
      date,
    ];
  }
}
