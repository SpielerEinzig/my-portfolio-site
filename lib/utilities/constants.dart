import 'package:flutter/material.dart';
import 'package:ryans_portfolio/pages/sub_pages/home.dart';
import 'package:ryans_portfolio/pages/sub_pages/portfolio.dart';
import 'package:ryans_portfolio/pages/sub_pages/skills.dart';

const int experience = 3;
const double responsive = 580;

const kScaffold = Color(0xff222222);
const kAvatarBorder = Color(0xff444444);
const kTitleContainer = Color(0xff333333);
const kPrimaryBlue = Color(0xff007CED);

List<Map> pages = [
  {"page": 'Home', 'widget': const Home()},
  {"page": 'Skills', 'widget': const Skills()},
  {"page": 'Portfolio', 'widget': const Portfolio()},
];

List<Map> contact = [
  {
    'logo': "assets/images/logos/github.png",
    'link': 'https://github.com/SpielerEinzig'
  },
  {
    'logo': "assets/images/logos/linkedin.png",
    'link': 'https://www.linkedin.com/in/spielereinzig/'
  },
  {
    'logo': "assets/images/logos/twitter.png",
    'link': 'https://twitter.com/spielerEinzig'
  },
];
