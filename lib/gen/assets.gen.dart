// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/empty_favourite.png
  AssetGenImage get emptyFavourite =>
      const AssetGenImage('assets/images/empty_favourite.png');

  /// File path: assets/images/guest_img.png
  AssetGenImage get guestImg =>
      const AssetGenImage('assets/images/guest_img.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_labeled.png
  AssetGenImage get logoLabeled =>
      const AssetGenImage('assets/images/logo_labeled.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    emptyFavourite,
    guestImg,
    logo,
    logoLabeled,
    splash,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/alert_logout.svg
  String get alertLogout => 'assets/svg/alert_logout.svg';

  /// File path: assets/svg/bookmark-Filled.svg
  String get bookmarkFilled => 'assets/svg/bookmark-Filled.svg';

  /// File path: assets/svg/bookmark.svg
  String get bookmark => 'assets/svg/bookmark.svg';

  /// File path: assets/svg/clipboard-text.svg
  String get clipboardText => 'assets/svg/clipboard-text.svg';

  /// File path: assets/svg/delete_account.svg
  String get deleteAccount => 'assets/svg/delete_account.svg';

  /// File path: assets/svg/edit.svg
  String get edit => 'assets/svg/edit.svg';

  /// File path: assets/svg/email.svg
  String get email => 'assets/svg/email.svg';

  /// File path: assets/svg/eye-slash.svg
  String get eyeSlash => 'assets/svg/eye-slash.svg';

  /// File path: assets/svg/eye.svg
  String get eye => 'assets/svg/eye.svg';

  /// File path: assets/svg/filter.svg
  String get filter => 'assets/svg/filter.svg';

  /// File path: assets/svg/home-2.svg
  String get home2 => 'assets/svg/home-2.svg';

  /// File path: assets/svg/info-circle.svg
  String get infoCircle => 'assets/svg/info-circle.svg';

  /// File path: assets/svg/key.svg
  String get key => 'assets/svg/key.svg';

  /// File path: assets/svg/language-square.svg
  String get languageSquare => 'assets/svg/language-square.svg';

  /// File path: assets/svg/login.svg
  String get login => 'assets/svg/login.svg';

  /// File path: assets/svg/logout.svg
  String get logout => 'assets/svg/logout.svg';

  /// File path: assets/svg/message-text.svg
  String get messageText => 'assets/svg/message-text.svg';

  /// File path: assets/svg/notification-bing.svg
  String get notificationBing => 'assets/svg/notification-bing.svg';

  /// File path: assets/svg/orders.svg
  String get orders => 'assets/svg/orders.svg';

  /// File path: assets/svg/profile.svg
  String get profile => 'assets/svg/profile.svg';

  /// File path: assets/svg/security-user.svg
  String get securityUser => 'assets/svg/security-user.svg';

  /// File path: assets/svg/x-circle.svg
  String get xCircle => 'assets/svg/x-circle.svg';

  /// List of all assets
  List<String> get values => [
    alertLogout,
    bookmarkFilled,
    bookmark,
    clipboardText,
    deleteAccount,
    edit,
    email,
    eyeSlash,
    eye,
    filter,
    home2,
    infoCircle,
    key,
    languageSquare,
    login,
    logout,
    messageText,
    notificationBing,
    orders,
    profile,
    securityUser,
    xCircle,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar.json
  String get ar => 'assets/translations/ar.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [ar, en];
}

abstract final class Assets {
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
