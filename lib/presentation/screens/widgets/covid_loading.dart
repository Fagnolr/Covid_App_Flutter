import 'package:flutter/material.dart';

class CovidLoading extends StatelessWidget {
  const CovidLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          SizedBox(height: 60, width: 60, child: CircularProgressIndicator()),
    );
  }
}
