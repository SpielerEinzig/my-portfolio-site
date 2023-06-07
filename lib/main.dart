import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ryans_portfolio/pages/home_page.dart';
import 'package:ryans_portfolio/provider/portfolio_provider.dart';
import 'package:ryans_portfolio/utilities/app_scroll_behaviour.dart';
import 'package:ryans_portfolio/utilities/constants.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffold,
        colorScheme: ColorScheme.fromSeed(seedColor: kScaffold),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(
              textStyle: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
      home: const HomePage(),
    );
  }
}
