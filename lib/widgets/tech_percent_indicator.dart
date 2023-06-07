import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utilities/constants.dart';

class TechPercentIndicator extends StatelessWidget {
  final int years;
  final String text;
  const TechPercentIndicator(
      {Key? key, required this.years, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "$years year${years <= 1 ? "" : "s"}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          LinearPercentIndicator(
            lineHeight: 3,
            percent: years / experience,
            backgroundColor: kTitleContainer,
            progressColor: kPrimaryBlue,
          ),
        ],
      ),
    );
  }
}
