import 'package:ewan/features/favourites/data/models/favorite_cache_item.dart';

import '../../core.dart';

class PrefData {
  static set isSignedIn(bool value) =>
      Managers.prefManager.set(PrefKeys.signedIn, value);

  static bool get isSignedIn =>
      Managers.prefManager.get<bool>(PrefKeys.signedIn) ?? false;

  static set token(String? value) =>
      Managers.prefManager.set(PrefKeys.token, value);

  static String? get token => Managers.prefManager.get<String>(PrefKeys.token);

  static set refreshToken(String? value) =>
      Managers.prefManager.set(PrefKeys.refreshToken, value);

  static String? get refreshToken =>
      Managers.prefManager.get<String>(PrefKeys.refreshToken);

  static set isFirstTime(bool value) =>
      Managers.prefManager.set(PrefKeys.firstTime, value);

  static bool get isFirstTime =>
      Managers.prefManager.get<bool>(PrefKeys.firstTime) ?? true;

  static set fcmToken(String? value) =>
      Managers.prefManager.set(PrefKeys.fcmToken, value);

  static String? get fcmToken =>
      Managers.prefManager.get<String>(PrefKeys.fcmToken);

  static set fcmTokenSent(bool value) =>
      Managers.prefManager.set(PrefKeys.fcmTokenSent, value);

  static bool get fcmTokenSent =>
      Managers.prefManager.get<bool>(PrefKeys.fcmTokenSent) ?? false;

  static set currencyIdPhone(String? value) =>
      Managers.prefManager.set(PrefKeys.currencyId, value);

  static String? get currencyIdPhone =>
      Managers.prefManager.get<String>(PrefKeys.currencyId);

  static set favoriteProperties(List<FavoriteCacheItem> value) =>
      Managers.prefManager.set(
        PrefKeys.favoriteProperties,
        jsonEncode(value.map((e) => e.toJson()).toList()),
      );

  static List<FavoriteCacheItem> get favoriteProperties {
    final raw = Managers.prefManager.get<String>(PrefKeys.favoriteProperties);
    if (raw == null || raw.isEmpty) return [];
    final decoded = jsonDecode(raw) as List;
    return decoded
        .map((e) => FavoriteCacheItem.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static void clearFavoriteProperties() =>
      Managers.prefManager.remove(PrefKeys.favoriteProperties);
}
