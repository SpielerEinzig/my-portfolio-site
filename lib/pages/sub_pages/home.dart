import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:ryans_portfolio/utilities/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > responsive
        ? Row(
            children: buildContent(size),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildContent(size),
            ),
          );
  }

  List<Widget> buildContent(Size size) {
    return [
      AvatarGlow(
        endRadius: size.width * 0.18,
        glowColor: Colors.deepPurple,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kAvatarBorder,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: size.width * 0.125,
              backgroundImage: const AssetImage("assets/images/ryan.png"),
              backgroundColor: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ),
      SizedBox(width: size.width * 0.0427),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mobile Developer (Android and iOS)",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.7)),
              ),
              SizedBox(height: size.height * 0.04),
              const Text("Ryan Egbejule-jalla",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              SizedBox(height: size.height * 0.08),
              const Text(
                "Experienced Flutter Developer and Technical Lead "
                "with a strong background in developing and deploying "
                "high-quality mobile applications for Android and iOS.\n\n"
                " Proven expertise in Flutter, Dart, and mobile app architecture and"
                " skilled in leading development teams and ensuring project success"
                ". Proficient in Node js and AWS Lambda for backend development.\n\n"
                " Committed to delivering innovative solutions and "
                "exceeding client expectations.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
