import 'package:flutter/material.dart';

import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';
import '../widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  // static const String dsc = 'assets/work/dsc.png';
  // static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/bip.png';
  static const String fluPes = 'assets/work/flu_pesh.png';
  static const String fluLhr = 'assets/work/flu_lhr.png';

  // static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    // "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];



  static const List<String> socialLinks = [
    "https://www.facebook.com/profile.php?id=100048071862108",
    "https://www.instagram.com/king_______khan_13/",
    // "https://twitter.com/mhmzdev",
    "https://www.linkedin.com/in/khanibrahim1336/",
    "https://github.com/ibrahim-khan-flutterdev",
    // "https://mhmzdev.medium.com"
  ];

  static const String resume =
      'https://docs.google.com/document/d/1LmoVXuMs8RT83CkuesBbFyIXJcg3z_YM/edit?usp=sharing&ouid=112003980476981077484&rtpof=true&sd=true';

  static const String gitHub = "https://github.com/ibrahim-khan-flutterdev";
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
