import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryans_portfolio/provider/portfolio_provider.dart';
import 'package:ryans_portfolio/utilities/main_utilities.dart';

import '../../models/portfolio_model.dart';
import '../../utilities/constants.dart';
import '../../widgets/indicator_title.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<PortfolioModel> portfolioList =
        context.watch<PortfolioProvider>().getPortfolioModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: portfolioList.map<Widget>((item) {
                  return TextButton(
                    onPressed: () {
                      setState(() {
                        selected = portfolioList.indexOf(item);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: selected == portfolioList.indexOf(item)
                          ? IndicatorTitle(item.name)
                          : Text(
                              item.name,
                              style: TextStyle(
                                fontSize: size.width > responsive ? 30 : 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kTitleContainer,
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: Colors.white.withOpacity(0.3))),
              ),
              padding: EdgeInsets.only(left: size.width * 0.0833),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.width > responsive
                        ? size.height * 0.025
                        : size.height * 0.01),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${portfolioList[selected].name}  - "
                      " ${portfolioList[selected].description}",
                      style: TextStyle(
                        fontSize: size.width > responsive ? 40 : 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Links: ",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        if (portfolioList[selected].appStore != null)
                          IconButton(
                            onPressed: () async {
                              MainUtilities().launchWebUrl(
                                  portfolioList[selected].appStore!);
                            },
                            icon: const Icon(Icons.apple),
                          ),
                        if (portfolioList[selected].playStore != null)
                          IconButton(
                            onPressed: () {
                              MainUtilities().launchWebUrl(
                                  portfolioList[selected].playStore!);
                            },
                            icon: const Icon(Icons.android),
                          ),
                        if (portfolioList[selected].external != null)
                          IconButton(
                            onPressed: () {
                              MainUtilities().launchWebUrl(
                                  portfolioList[selected].external!);
                            },
                            icon: const Icon(Icons.link),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: size.width * 0.033),
                child: size.width > responsive
                    ? Row(
                        children: buildContent(size, portfolioList),
                      )
                    : Column(
                        children: buildContent(size, portfolioList),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildContent(Size size, List<PortfolioModel> portfolioList) {
    return [
      Expanded(
        flex: 3,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: portfolioList[selected].images.map((image) {
              return Container(
                width: 150,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              );
            }).toList(),
          ),
        ),
      ),
      const SizedBox(width: 20),
      Expanded(
        flex: 5,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Responsibilities: ",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              ...portfolioList[selected]
                  .responsibilities
                  .map<Widget>((responsibility) {
                return Text("- $responsibility");
              }).toList()
            ],
          ),
        ),
      ),
    ];
  }
}
