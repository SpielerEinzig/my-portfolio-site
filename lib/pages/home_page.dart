import 'package:flutter/material.dart';
import 'package:ryans_portfolio/utilities/constants.dart';
import 'package:ryans_portfolio/utilities/main_utilities.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.04259,
          bottom: 23,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.03125,
                right: size.width * 0.03125,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: kPrimaryBlue,
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "R",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 27,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Ryan Egbejule-jalla",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      )
                    ],
                  ),
                  if (size.width > responsive)
                    Row(
                      children: pages.map<Widget>((page) {
                        return TextButton(
                          onPressed: () {
                            if (_controller.hasClients) {
                              _controller.animateToPage(pages.indexOf(page),
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            }
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: size.width * 0.03958),
                            child: Text(
                              page['page'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight:
                                      pages.indexOf(page) == selectedIndex
                                          ? FontWeight.w700
                                          : FontWeight.w400,
                                  color: pages.indexOf(page) == selectedIndex
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.5)),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (page) {
                  setState(() {
                    selectedIndex = page;
                  });
                },
                children: pages.map<Widget>((item) => item['widget']).toList(),
              ),
            ),
            Divider(color: Colors.white.withOpacity(0.4)),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.03125,
                right: size.width * 0.03125,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: contact.map((method) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () async {
                            await MainUtilities().launchWebUrl(method['link']);
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(method['logo']),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    children: [
                      if (selectedIndex > 0)
                        IconButton(
                          onPressed: () {
                            if (_controller.hasClients) {
                              _controller.animateToPage(selectedIndex -= 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            }
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                      const SizedBox(width: 40),
                      if (selectedIndex < 2)
                        IconButton(
                          onPressed: () {
                            if (_controller.hasClients) {
                              _controller.animateToPage(selectedIndex += 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            }
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        )
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "© 2023 Ryan Egbejule-jalla.",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
