import 'dart:io';

import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:ewan/core/server/endpoints.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUpdateInfo {
  final String currentVersion;
  final String latestVersion;
  final bool isUpdateAvailable;
  final String storeUrl;
  final String? releaseNotes;

  AppUpdateInfo({
    required this.currentVersion,
    required this.latestVersion,
    required this.isUpdateAvailable,
    required this.storeUrl,
    this.releaseNotes,
  });
}

class UpdateManager {
  UpdateManager({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  static const String _appInfoUrl = EndPoint.baseUrl + EndPoint.appInfo;
  static const String _defaultIosLink =
      "https://apps.apple.com/app/id6754778266";
  static const String _defaultAndroidLink =
      "https://tallebplus.com/downloads/talleb+.apk";

  Future<AppUpdateInfo> getAppUpdateInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    final String currentVersion = info.version;
    final String packageName = info.packageName;

    if (Platform.isIOS) {
      return _getIosUpdateInfo(currentVersion, packageName);
    }

    if (Platform.isAndroid) {
      return _getAndroidUpdateInfo(currentVersion, packageName);
    }

    return AppUpdateInfo(
      currentVersion: currentVersion,
      latestVersion: currentVersion,
      isUpdateAvailable: false,
      storeUrl: '',
    );
  }

  Future<AppUpdateInfo> _getIosUpdateInfo(
    String currentVersion,
    String bundleId,
  ) async {
    final Response<dynamic> response = await _dio.get(_appInfoUrl);

    if (response.statusCode != 200 || response.data == null) {
      throw Exception(
        //todo locale
        'Cannot fetch app info (status ${response.statusCode})',
      );
    }

    final Map<String, dynamic>? results =
        response.data['results'] as Map<String, dynamic>?;

    if (results == null) {
      //todo locale
      throw Exception('Invalid response format from app info API');
    }

    final String latestVersion =
        (results['ios_app_version'] as String?) ?? currentVersion;
    final String storeUrl =
        (results['ios_app_link'] as String?) ?? _defaultIosLink;

    final bool isUpdateAvailable = _isVersionGreater(
      latestVersion,
      currentVersion,
    );

    return AppUpdateInfo(
      currentVersion: currentVersion,
      latestVersion: latestVersion,
      isUpdateAvailable: isUpdateAvailable,
      storeUrl: storeUrl,
    );
  }

  Future<AppUpdateInfo> _getAndroidUpdateInfo(
    String currentVersion,
    String packageName,
  ) async {
    final Response<dynamic> response = await _dio.get(_appInfoUrl);

    if (response.statusCode != 200 || response.data == null) {
      //todo locale
      throw Exception('Cannot fetch app info (status ${response.statusCode})');
    }

    final Map<String, dynamic>? results =
        response.data['results'] as Map<String, dynamic>?;

    if (results == null) {
      //todo locale
      throw Exception('Invalid response format from app info API');
    }

    final String latestVersion =
        (results['android_app_version'] as String?) ?? currentVersion;
    final String storeUrl =
        (results['android_app_link'] as String?) ?? _defaultAndroidLink;

    final bool isUpdateAvailable = _isVersionGreater(
      latestVersion,
      currentVersion,
    );

    return AppUpdateInfo(
      currentVersion: currentVersion,
      latestVersion: latestVersion,
      isUpdateAvailable: isUpdateAvailable,
      storeUrl: storeUrl,
    );
  }

  bool _isVersionGreater(String a, String b) {
    final List<int> aParts = a
        .split('.')
        .map(
          (String part) =>
              int.tryParse(part.replaceAll(RegExp('[^0-9]'), '')) ?? 0,
        )
        .toList();
    final List<int> bParts = b
        .split('.')
        .map(
          (String part) =>
              int.tryParse(part.replaceAll(RegExp('[^0-9]'), '')) ?? 0,
        )
        .toList();

    final int maxLen = aParts.length > bParts.length
        ? aParts.length
        : bParts.length;

    for (int i = 0; i < maxLen; i++) {
      final int av = i < aParts.length ? aParts[i] : 0;
      final int bv = i < bParts.length ? bParts[i] : 0;
      if (av > bv) return true;
      if (av < bv) return false;
    }

    return false;
  }

  Future<void> launchUpdateUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      return;
    }

    throw Exception('Could not open update URL: $url');
  }
}
