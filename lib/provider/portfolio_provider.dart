import 'package:flutter/material.dart';
import 'package:ryans_portfolio/models/portfolio_model.dart';

List<PortfolioModel> _portfolioList = [
  PortfolioModel(
    name: "Clik",
    appStore:
        "https://apps.apple.com/us/app/clik-create-your-safe-space/id6449166654",
    external: null,
    logoLink:
        "https://github.com/OfficialCliqApp/clik-mobile/blob/main/assets/images/logo/512.png",
    playStore:
        "https://play.google.com/store/apps/details?id=com.officialcliqapp.clik",
    responsibilities: [
      "Led the development team",
      "Designed the architecture for the mobile app",
      "Collaborated with the design team to ensure user-friendly design",
      "Transformed UI design into code",
      "Integrated backend code with the app",
      "Deployed and maintained Android and iOS apps on the app stores",
    ],
    technologies: [
      "Flutter",
      "Firebase dynamic links",
      "Firebase Cloud Firestore",
      "Google analytics",
      "Push notifications",
      "API integration (Rest API)",
      "AWS S3"
    ],
    description: "A social media app.",
    images: [
      "assets/images/clik/1.png",
      "assets/images/clik/2.png",
      "assets/images/clik/3.png",
      "assets/images/clik/4.png",
      "assets/images/clik/5.png",
    ],
  ),
  PortfolioModel(
      name: "Blite",
      appStore:
          "https://apps.apple.com/pl/app/blite-connecting-friends/id1628206393",
      external: null,
      logoLink:
          "https://github.com/JoinBlite/blite/blob/main/assets/images/logo.png",
      playStore:
          "https://play.google.com/store/apps/details?id=com.camgray.blite",
      responsibilities: [
        "Designed architecture for the mobile app",
        "Worked with design team to ensure user-friendly design",
        "Transformed UI design into code",
        "Built backend with Firebase",
        "Deployed and maintained Android and iOS apps on the app stores",
      ],
      technologies: [
        "Flutter",
        "Firebase Auth",
        "Cloud Firestore",
        "Google analytics",
        "Local notifications",
        "API integration"
      ],
      description: "A schedule management app.",
      images: [
        "assets/images/blite/1.png",
        "assets/images/blite/2.png",
        "assets/images/blite/3.png",
        "assets/images/blite/4.png"
      ]),
  PortfolioModel(
      description: "A video automation app.",
      name: "Vidit",
      appStore: null,
      external: null,
      logoLink:
          "https://play-lh.googleusercontent.com/-7zy7u-OLrQObJrJchmnJp9PqQ06fllKm6dGlmTK0Z8Y5O2gE_fPTEyF3koYLpPJL4c=w480-h960-rw",
      playStore:
          "https://play.google.com/store/apps/details?id=com.spielereinzig.vidit",
      responsibilities: [
        "Provided architectural guidance and design for the mobile app",
        "Led the app design process to create an intuitive user experience",
        "Developed scalable backend architecture using AWS and Node.js",
        "Ensured successful deployment and continuous maintenance of the Android app on the Google Play Store",
      ],
      images: [
        "assets/images/vidit/1.png",
        "assets/images/vidit/2.png",
        "assets/images/vidit/3.png",
        "assets/images/vidit/4.png",
      ],
      technologies: [
        "Flutter",
        "Amazon Web Services (AWS)",
        "Node js"
            "Firebase Auth",
        "Mongo DB",
      ]),
  PortfolioModel(
      name: "Fundli",
      appStore: null,
      images: [
        "assets/images/fundli/1.png",
        "assets/images/fundli/2.png",
        "assets/images/fundli/3.png",
        "assets/images/fundli/4.png",
      ],
      description: "A money management app",
      external:
          "https://github.com/wiredsandbox/fundli-app/releases/download/v2.0.0/app-release.apk",
      logoLink:
          "https://github.com/wiredsandbox/fundli-app/blob/main/assets/images/LOGO.png",
      playStore: null,
      responsibilities: [
        "Provided architectural guidance and designed the mobile app",
        "Developed the mobile app with a focus on performance and user experience",
        "Integrated the backend with API services to enable seamless data communication",
        "Ensured successful deployment and ongoing maintenance of the Android app",
      ],
      technologies: [
        "Flutter",
        "Android",
        "iOS",
      ]),
  PortfolioModel(
      description: "An ecommerce app to order coffee.",
      images: [
        "assets/images/cafe/1.png",
        "assets/images/cafe/2.png",
        "assets/images/cafe/3.png",
        "assets/images/cafe/4.png",
      ],
      name: "Real Cafe",
      appStore: null,
      external:
          "https://drive.google.com/file/d/1QP8cbAItSezPBX91QxawUz1simI5tJ4x/view?usp=sharing",
      logoLink:
          "https://github.com/SpielerEinzig/Real-Cafe/blob/master/assets/images/brand-logo.png",
      playStore: null,
      responsibilities: [
        "Provided architectural guidance and designed the mobile app",
        "Developed the mobile app with a focus on performance and user experience",
        "Integrated the backend with API services to enable seamless data communication",
        "Ensured successful deployment and ongoing maintenance of the Android app",
      ],
      technologies: [
        "Flutter",
        "Android",
        "iOS",
      ]),
];

class PortfolioProvider with ChangeNotifier {
  List<PortfolioModel> get getPortfolioModel => _portfolioList;
}
