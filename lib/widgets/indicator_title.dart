import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utilities/constants.dart';

class IndicatorTitle extends StatefulWidget {
  final String text;
  const IndicatorTitle(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  State<IndicatorTitle> createState() => _IndicatorTitleState();
}

class _IndicatorTitleState extends State<IndicatorTitle> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: size.width > responsive
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
              fontSize: size.width > responsive ? 30 : 15,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        const SizedBox(height: 5),
        LinearPercentIndicator(
          width: 127.0,
          lineHeight: 2.0,
          percent: 0.3,
          backgroundColor: kTitleContainer,
          progressColor: kPrimaryBlue,
        ),
      ],
    );
  }
}
