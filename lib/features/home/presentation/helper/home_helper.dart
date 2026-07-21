import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../home.dart';

// enum AdType { none, slider, single, popup }

// enum AdTargetType { none, service, external }

mixin HomeHelper {
  // Future<void> clickOnAds({
  //   required HomeBloc homeBloc,
  //   required BuildContext context,
  //   required ItemResult itemResult,
  // }) async {
  //   homeBloc.add(HomeEvent.clickAds(adsId: itemResult.id));
  //   switch (itemResult.targetType) {
  //     case AdTargetType.none:
  //     case null:
  //       break;
  //     case AdTargetType.service:
  //       context.pushRoute(
  //         ServiceRoute(serviceData: itemResult.service!, isView: true),
  //       );
  //     case AdTargetType.external:
  //       await openExternalLink(itemResult.externalLink);
  //   }
  // }

  Future<void> openExternalLink(String? urlString) async {
    if (urlString == null || urlString.isEmpty) {
      log('⚠️ No URL provided');
      return;
    }

    // Ensure URL starts with http or https
    String normalizedUrl = urlString.trim();
    if (!normalizedUrl.startsWith('http://') &&
        !normalizedUrl.startsWith('https://')) {
      normalizedUrl = 'https://$normalizedUrl';
    }

    final Uri? uri = Uri.tryParse(normalizedUrl);
    if (uri == null) {
      log('❌ Invalid URL: $urlString');
      return;
    }

    try {
      final bool launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched) {
        log('❌ Could not launch $normalizedUrl');
      }
    } catch (e) {
      log('🚨 Failed to launch URL: $e');
    }
  }
}
