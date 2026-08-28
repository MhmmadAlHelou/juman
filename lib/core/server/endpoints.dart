class EndPoint {
  EndPoint._();

  static const String baseUrl = 'https://api-ewan.tallebplus.com/api/';

  // static const String baseUrl = 'http://127.0.0.1:8000/api/v2/';

  // ─────────────────────────────────────────────
  // Authentication
  // ─────────────────────────────────────────────

  static const String login = 'auth/login/';
  static const String refreshToken = 'token/refresh/';

  // ─────────────────────────────────────────────
  // Amenities
  // ─────────────────────────────────────────────

  static const String amenityCategories = 'amenities/categories/';

  static const String amenityCategory = 'amenities/categories/{id}/';

  static const String amenities = 'amenities/items/';

  static const String amenity = 'amenities/items/{id}/';

  // ─────────────────────────────────────────────
  // Categories
  // ─────────────────────────────────────────────

  static const String categories = 'categories/';

  static const String category = 'categories/{id}/';

  // ─────────────────────────────────────────────
  // Cities
  // ─────────────────────────────────────────────

  static const String cities = 'cities/';

  static const String city = 'cities/{id}/';

  static const String areas = 'cities/areas/';

  static const String area = 'cities/areas/{id}/';

  // ─────────────────────────────────────────────
  // Place Types
  // ─────────────────────────────────────────────

  static const String placeTypes = 'place-types/';

  static const String placeType = 'place-types/{id}/';

  // ─────────────────────────────────────────────
  // Properties
  // ─────────────────────────────────────────────

  static const String properties = 'properties/';

  static const String property = 'properties/{id}/';

  static const String submitProperty = 'properties/{id}/submit/';

  static const String myProperties = 'properties/my-properties/';

  // ─────────────────────────────────────────────
  // Notifications
  // ─────────────────────────────────────────────

  static const String registerDeviceToken =
      'notifications/register-device-token/';

  // ─────────────────────────────────────────────
  // Uploads
  // ─────────────────────────────────────────────

  static const String uploadImage = 'uploads/image/';

  ///////////////////////////////////
  static const String register = 'users/register/';

  // static const String refreshToken = 'users/refresh/';

  static const String resetPassword = 'users/reset-password/';
  static const String changePassword = 'users/change-password/';
  static const String changeEmail = 'users/change-email/';

  static const String deleteAccount = 'users/delete/';
  static const String languages = 'languages/';
  static const String systemInfo = 'system-info/system-info/';
  static const String appInfo = 'system-info/app-info/';
  static const String contactUs = 'contact-messages/submit/';

  static const String sendVerificationCode = 'users/send-code/';
  static const String verify = 'users/verify/';
  // static const String login = 'users/login/';
  static const String loginByCode = 'users/code-login/';

  // static const String cities = 'cities/cities/';

  static const String updateFcm = 'fcm/devices/';
  static const String updateForUnAuthFcm = 'fcm/unauthenticated-devices/';

  static const String profile = 'users/profile/';

  static const String genders = 'enums/genders/';

  static const String notifications = 'notification/my-notifications/';

  static const String ads = 'home/ads/';
  static const String homeImage = 'home/image/';
  // static const String categories = 'services/categories/';
  static const String subServices = 'services/sub-services/';
  static const String services = 'services/services/';

  static const String myOrders = 'orders/user/orders/';
  static const String acceptedOrder = 'orders/orders/';
  static const String uploaderItems = 'uploader/items/';

  static const String favourites = 'favourites/favourites/';
}
