import 'package:covid_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CovidCard extends StatelessWidget {
  const CovidCard({Key? key, required this.title, required this.data})
      : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontSize: 12), color: AppColors.cardBlue),
          ),
        ],
      ),
    );
  }
}
