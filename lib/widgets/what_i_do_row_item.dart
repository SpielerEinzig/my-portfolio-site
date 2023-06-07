import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class WhatIDoItem extends StatelessWidget {
  final String title;
  final String body;
  final IconData? iconData;
  const WhatIDoItem(
      {Key? key, required this.title, required this.body, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        iconData != null
            ? Icon(
                iconData,
                color: kPrimaryBlue,
                size: 35,
              )
            : const FlutterLogo(size: 35, textColor: kPrimaryBlue),
        const SizedBox(width: 25),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '$title\n\n',
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              children: <TextSpan>[
                TextSpan(
                  text: body,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
