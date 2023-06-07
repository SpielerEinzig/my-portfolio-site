import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainUtilities {
  Future<void> launchWebUrl(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
