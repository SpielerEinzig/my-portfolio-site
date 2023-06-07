import 'package:flutter/material.dart';
import 'package:ryans_portfolio/utilities/constants.dart';
import 'package:ryans_portfolio/widgets/indicator_title.dart';
import 'package:ryans_portfolio/widgets/what_i_do_row_item.dart';

import '../../widgets/tech_percent_indicator.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kTitleContainer,
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: Colors.white.withOpacity(0.3))),
              ),
              padding: EdgeInsets.only(
                  left: size.width > responsive
                      ? size.height * 0.0833
                      : size.height * 0.032),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.width > responsive
                        ? size.height * 0.06
                        : size.height * 0.02),
                child: const Text(
                  "Skills",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: size.width > responsive
                    ? Row(
                        children: buildContent(),
                      )
                    : Column(
                        children: buildContent(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildContent() {
    return [
      const Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IndicatorTitle("What I do?"),
              SizedBox(height: 20),
              WhatIDoItem(
                title: "Android and iOS development with Flutter",
                body: "As a Flutter developer, I am passionate"
                    " about building elegant and responsive "
                    "cross-platform applications that run seamlessly"
                    " on both Android and iOS devices."
                    " With expertise in Dart and Flutter,"
                    " I leverage my skills to create visually"
                    " stunning user interfaces, implement"
                    " smooth animations, and deliver optimal performance."
                    " By staying updated with the latest Flutter advancements"
                    " and utilizing platform-specific integrations, "
                    "I strive to develop innovative mobile experiences"
                    " that engage users on multiple platforms.",
              ),
            ],
          ),
        ),
      ),
      const Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IndicatorTitle("Technologies"),
              SizedBox(height: 20),
              Column(
                children: [
                  TechPercentIndicator(years: 3, text: "Flutter"),
                  TechPercentIndicator(years: 3, text: "Firebase"),
                  TechPercentIndicator(years: 3, text: "Git"),
                  TechPercentIndicator(years: 1, text: "Node js"),
                  TechPercentIndicator(years: 1, text: "AWS"),
                  TechPercentIndicator(years: 1, text: "Mongo DB"),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
