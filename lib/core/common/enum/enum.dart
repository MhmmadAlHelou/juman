// ignore_for_file: constant_identifier_names

import '../../core.dart';

enum AppType { student, teacher, admin, parent }

enum SystemInfo {
  privacyPolicy,
  termsOfUse,
  aboutUs,
  reviewPolicy,
  cancellationPolicy,
}

enum DisplayType { desktop, tablet, mobile }

extension PlatformTypeExtension on DisplayType {
  Customizable get textTheme {
    switch (this) {
      case DisplayType.mobile:
        return MobileTextThemes();
      case DisplayType.tablet:
      case DisplayType.desktop:
        return TabletTextThemes();
    }
  }
}

enum NotificationType { none, alert, order, myOrder, ad }
