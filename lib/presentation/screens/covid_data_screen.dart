import 'package:covid_app/data/repository/covid_repository.dart';
import 'package:covid_app/logic/cubit/cubit/covid_cubit.dart';
import 'package:covid_app/presentation/screens/widgets/covid_empty.dart';
import 'package:covid_app/presentation/screens/widgets/covid_fail.dart';
import 'package:covid_app/presentation/screens/widgets/covid_loading.dart';
import 'package:covid_app/presentation/screens/widgets/covid_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CovidDataScreen extends StatelessWidget {
  const CovidDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CovidCubit(context.read<CovidRepository>())..fetchCovidData(),
      child: CovidView(),
    );
  }
}

class CovidView extends StatelessWidget {
  const CovidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => BlocProvider.of<CovidCubit>(context).fetchCovidData(),
        child: Center(
          child: BlocBuilder<CovidCubit, CovidState>(
            builder: (context, state) {
              switch (state.status) {
                case CovidStatus.initial:
                  return CovidEmpty();
                case CovidStatus.loading:
                  return CovidLoading();
                case CovidStatus.failure:
                  return CovidFailure();
                case CovidStatus.success:
                  return CovidSuccess(
                    covidDataDto: state.covidDataDto,
                  );
                default:
                  return CovidFailure();
              }
            },
          ),
        ),
      ),
    );
  }
}
