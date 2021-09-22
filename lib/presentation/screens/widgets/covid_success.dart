import 'package:covid_app/data/models/covid_data_dto.dart';
import 'package:covid_app/presentation/screens/widgets/covid_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

class CovidSuccess extends StatelessWidget {
  const CovidSuccess({Key? key, required this.covidDataDto}) : super(key: key);

  final CovidDataDto covidDataDto;

  @override
  Widget build(BuildContext context) {
    const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 1),
    ];

    NumberFormat.currency().format(123456);
    return Center(
      child: StaggeredGridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        staggeredTiles: _staggeredTiles,
        children: <Widget>[
          CovidCard(
              title: 'Total Confirmed',
              data: NumberFormat.decimalPattern()
                  .format(covidDataDto.global!.totalConfirmed)),
          CovidCard(
              title: 'New Confirmed',
              data: NumberFormat.decimalPattern()
                  .format(covidDataDto.global!.newConfirmed)),
          CovidCard(
              title: 'Total Recovered',
              data: NumberFormat.decimalPattern()
                  .format(covidDataDto.global!.totalRecovered)),
          CovidCard(
              title: 'New Deaths',
              data: NumberFormat.decimalPattern()
                  .format(covidDataDto.global!.newDeaths)),
          CovidCard(
              title: 'Total Deaths',
              data: NumberFormat.decimalPattern()
                  .format(covidDataDto.global!.totalDeaths)),
        ],
      ),
    );
  }
}
