import 'package:url_launcher/url_launcher.dart';

class AppUrl {
  static openUrl(String anyUrl) async {
    final Uri url = Uri.parse(anyUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
