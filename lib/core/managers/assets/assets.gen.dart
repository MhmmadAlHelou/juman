// // dart format width=80

// /// GENERATED CODE - DO NOT MODIFY BY HAND
// /// *****************************************************
// ///  FlutterGen
// /// *****************************************************

// // coverage:ignore-file
// // ignore_for_file: type=lint
// // ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart' as _svg;
// import 'package:vector_graphics/vector_graphics.dart' as _vg;

// class $AssetsImagesGen {
//   const $AssetsImagesGen();

//   /// File path: assets/images/empty_favourite.png
//   AssetGenImage get emptyFavourite =>
//       const AssetGenImage('assets/images/empty_favourite.png');

//   /// File path: assets/images/guest_img.png
//   AssetGenImage get guestImg =>
//       const AssetGenImage('assets/images/guest_img.png');

//   /// File path: assets/images/logo.png
//   AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

//   /// File path: assets/images/logo_labeled.png
//   AssetGenImage get logoLabeled =>
//       const AssetGenImage('assets/images/logo_labeled.png');

//   /// File path: assets/images/splash.png
//   AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

//   /// List of all assets
//   List<AssetGenImage> get values => [
//     emptyFavourite,
//     guestImg,
//     logo,
//     logoLabeled,
//     splash,
//   ];
// }

// class $AssetsSvgGen {
//   const $AssetsSvgGen();

//   /// File path: assets/svg/alert_logout.svg
//   SvgGenImage get alertLogout =>
//       const SvgGenImage('assets/svg/alert_logout.svg');

//   /// File path: assets/svg/bookmark-Filled.svg
//   SvgGenImage get bookmarkFilled =>
//       const SvgGenImage('assets/svg/bookmark-Filled.svg');

//   /// File path: assets/svg/bookmark.svg
//   SvgGenImage get bookmark => const SvgGenImage('assets/svg/bookmark.svg');

//   /// File path: assets/svg/clipboard-text.svg
//   SvgGenImage get clipboardText =>
//       const SvgGenImage('assets/svg/clipboard-text.svg');

//   /// File path: assets/svg/delete_account.svg
//   SvgGenImage get deleteAccount =>
//       const SvgGenImage('assets/svg/delete_account.svg');

//   /// File path: assets/svg/edit.svg
//   SvgGenImage get edit => const SvgGenImage('assets/svg/edit.svg');

//   /// File path: assets/svg/email.svg
//   SvgGenImage get email => const SvgGenImage('assets/svg/email.svg');

//   /// File path: assets/svg/eye-slash.svg
//   SvgGenImage get eyeSlash => const SvgGenImage('assets/svg/eye-slash.svg');

//   /// File path: assets/svg/eye.svg
//   SvgGenImage get eye => const SvgGenImage('assets/svg/eye.svg');

//   /// File path: assets/svg/filter.svg
//   SvgGenImage get filter => const SvgGenImage('assets/svg/filter.svg');

//   /// File path: assets/svg/home-2.svg
//   SvgGenImage get home2 => const SvgGenImage('assets/svg/home-2.svg');

//   /// File path: assets/svg/info-circle.svg
//   SvgGenImage get infoCircle => const SvgGenImage('assets/svg/info-circle.svg');

//   /// File path: assets/svg/key.svg
//   SvgGenImage get key => const SvgGenImage('assets/svg/key.svg');

//   /// File path: assets/svg/language-square.svg
//   SvgGenImage get languageSquare =>
//       const SvgGenImage('assets/svg/language-square.svg');

//   /// File path: assets/svg/login.svg
//   SvgGenImage get login => const SvgGenImage('assets/svg/login.svg');

//   /// File path: assets/svg/logout.svg
//   SvgGenImage get logout => const SvgGenImage('assets/svg/logout.svg');

//   /// File path: assets/svg/message-text.svg
//   SvgGenImage get messageText =>
//       const SvgGenImage('assets/svg/message-text.svg');

//   /// File path: assets/svg/notification-bing.svg
//   SvgGenImage get notificationBing =>
//       const SvgGenImage('assets/svg/notification-bing.svg');

//   /// File path: assets/svg/orders.svg
//   SvgGenImage get orders => const SvgGenImage('assets/svg/orders.svg');

//   /// File path: assets/svg/profile.svg
//   SvgGenImage get profile => const SvgGenImage('assets/svg/profile.svg');

//   /// File path: assets/svg/security-user.svg
//   SvgGenImage get securityUser =>
//       const SvgGenImage('assets/svg/security-user.svg');

//   /// File path: assets/svg/x-circle.svg
//   SvgGenImage get xCircle => const SvgGenImage('assets/svg/x-circle.svg');

//   /// List of all assets
//   List<SvgGenImage> get values => [
//     alertLogout,
//     bookmarkFilled,
//     bookmark,
//     clipboardText,
//     deleteAccount,
//     edit,
//     email,
//     eyeSlash,
//     eye,
//     filter,
//     home2,
//     infoCircle,
//     key,
//     languageSquare,
//     login,
//     logout,
//     messageText,
//     notificationBing,
//     orders,
//     profile,
//     securityUser,
//     xCircle,
//   ];
// }

// class $AssetsTranslationsGen {
//   const $AssetsTranslationsGen();

//   /// File path: assets/translations/ar.json
//   String get ar => 'assets/translations/ar.json';

//   /// File path: assets/translations/en.json
//   String get en => 'assets/translations/en.json';

//   /// List of all assets
//   List<String> get values => [ar, en];
// }

// class AssetsManager {
//   const AssetsManager._();

//   static const $AssetsImagesGen images = $AssetsImagesGen();
//   static const $AssetsSvgGen svg = $AssetsSvgGen();
//   static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
// }

// class AssetGenImage {
//   const AssetGenImage(
//     this._assetName, {
//     this.size,
//     this.flavors = const {},
//     this.animation,
//   });

//   final String _assetName;

//   final Size? size;
//   final Set<String> flavors;
//   final AssetGenImageAnimation? animation;

//   Image image({
//     Key? key,
//     AssetBundle? bundle,
//     ImageFrameBuilder? frameBuilder,
//     ImageErrorWidgetBuilder? errorBuilder,
//     String? semanticLabel,
//     bool excludeFromSemantics = false,
//     double? scale,
//     double? width,
//     double? height,
//     Color? color,
//     Animation<double>? opacity,
//     BlendMode? colorBlendMode,
//     BoxFit? fit,
//     AlignmentGeometry alignment = Alignment.center,
//     ImageRepeat repeat = ImageRepeat.noRepeat,
//     Rect? centerSlice,
//     bool matchTextDirection = false,
//     bool gaplessPlayback = true,
//     bool isAntiAlias = false,
//     String? package,
//     FilterQuality filterQuality = FilterQuality.medium,
//     int? cacheWidth,
//     int? cacheHeight,
//   }) {
//     return Image.asset(
//       _assetName,
//       key: key,
//       bundle: bundle,
//       frameBuilder: frameBuilder,
//       errorBuilder: errorBuilder,
//       semanticLabel: semanticLabel,
//       excludeFromSemantics: excludeFromSemantics,
//       scale: scale,
//       width: width,
//       height: height,
//       color: color,
//       opacity: opacity,
//       colorBlendMode: colorBlendMode,
//       fit: fit,
//       alignment: alignment,
//       repeat: repeat,
//       centerSlice: centerSlice,
//       matchTextDirection: matchTextDirection,
//       gaplessPlayback: gaplessPlayback,
//       isAntiAlias: isAntiAlias,
//       package: package,
//       filterQuality: filterQuality,
//       cacheWidth: cacheWidth,
//       cacheHeight: cacheHeight,
//     );
//   }

//   ImageProvider provider({AssetBundle? bundle, String? package}) {
//     return AssetImage(_assetName, bundle: bundle, package: package);
//   }

//   String get path => _assetName;

//   String get keyName => _assetName;
// }

// class AssetGenImageAnimation {
//   const AssetGenImageAnimation({
//     required this.isAnimation,
//     required this.duration,
//     required this.frames,
//   });

//   final bool isAnimation;
//   final Duration duration;
//   final int frames;
// }

// class SvgGenImage {
//   const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
//     : _isVecFormat = false;

//   const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
//     : _isVecFormat = true;

//   final String _assetName;
//   final Size? size;
//   final Set<String> flavors;
//   final bool _isVecFormat;

//   _svg.SvgPicture svg({
//     Key? key,
//     bool matchTextDirection = false,
//     AssetBundle? bundle,
//     String? package,
//     double? width,
//     double? height,
//     BoxFit fit = BoxFit.contain,
//     AlignmentGeometry alignment = Alignment.center,
//     bool allowDrawingOutsideViewBox = false,
//     WidgetBuilder? placeholderBuilder,
//     String? semanticsLabel,
//     bool excludeFromSemantics = false,
//     _svg.SvgTheme? theme,
//     _svg.ColorMapper? colorMapper,
//     ColorFilter? colorFilter,
//     Clip clipBehavior = Clip.hardEdge,
//     @deprecated Color? color,
//     @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
//     @deprecated bool cacheColorFilter = false,
//   }) {
//     final _svg.BytesLoader loader;
//     if (_isVecFormat) {
//       loader = _vg.AssetBytesLoader(
//         _assetName,
//         assetBundle: bundle,
//         packageName: package,
//       );
//     } else {
//       loader = _svg.SvgAssetLoader(
//         _assetName,
//         assetBundle: bundle,
//         packageName: package,
//         theme: theme,
//         colorMapper: colorMapper,
//       );
//     }
//     return _svg.SvgPicture(
//       loader,
//       key: key,
//       matchTextDirection: matchTextDirection,
//       width: width,
//       height: height,
//       fit: fit,
//       alignment: alignment,
//       allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
//       placeholderBuilder: placeholderBuilder,
//       semanticsLabel: semanticsLabel,
//       excludeFromSemantics: excludeFromSemantics,
//       colorFilter:
//           colorFilter ??
//           (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
//       clipBehavior: clipBehavior,
//       cacheColorFilter: cacheColorFilter,
//     );
//   }

//   String get path => _assetName;

//   String get keyName => _assetName;
// }
