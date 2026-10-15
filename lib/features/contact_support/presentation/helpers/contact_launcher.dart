import 'package:url_launcher/url_launcher.dart';

class ContactLauncher {
  const ContactLauncher._();

  static Future<bool> open(String url) async {
    try {
      return await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {
      return false;
    }
  }
}
