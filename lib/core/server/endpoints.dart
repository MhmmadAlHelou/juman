class EndPoint {
  EndPoint._();

  static const String baseUrl = 'https://api-ewan.tallebplus.com/api/';

  // static const String baseUrl = 'http://192.168.43.100:8000/api';

  // ─────────────────────────────────────────────
  // Authentication
  // ─────────────────────────────────────────────

  static const String login = 'auth/login/';
  static const String signup = 'auth/signup/';
  static const String forgotPassword = 'auth/forgot-password/';
  static const String resetPassword = 'auth/reset-password/';
  static const String verifyOtp = 'auth/verify-otp/';
  static const String resendOtp = 'auth/resend-otp/';
  static const String refreshToken = 'auth/refresh/';

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
  static const String uploadDocument = 'uploads/document/';

  // ─────────────────────────────────────────────
  // reservations
  // ─────────────────────────────────────────────

  static const String reservations = 'reservations/';

  // ─────────────────────────────────────────────
  // payment-methods
  // ─────────────────────────────────────────────

  static const String paymentMethods = 'payment-methods/';

  // ─────────────────────────────────────────────
  // Profile
  // ─────────────────────────────────────────────

  static const String profile = 'profile/';
  static const String passportDocument = 'verification/passport/';
  static const String selfiePhoto = 'verification/selfie/';
  static const String familyBookDocument = 'verification/family-book/';
  static const String updateProfile = 'profile/update/';
  static const String requestPasswordChange =
      'profile/password/request-change/';
  static const String confirmPasswordChange =
      'profile/password/confirm-change/';
  static const String requestEmailChange = 'profile/email/request-change/';
  static const String confirmEmailChange = 'profile/email/confirm-change/';

  // ─────────────────────────────────────────────
  // favorites
  // ─────────────────────────────────────────────

  static const String favorites = 'favorites/';

  ///////////////////////////////////
  // static const String register = 'users/register/';

  // static const String refreshToken = 'users/refresh/';

  // static const String resetPassword = 'users/reset-password/';
  // static const String changePassword = 'users/change-password/';
  static const String changeEmail = 'users/change-email/';

  static const String deleteAccount = 'users/delete/';
  static const String languages = 'languages/';
  static const String systemInfo = 'system-info/system-info/';
  static const String appInfo = 'system-info/app-info/';
  static const String contactUs = 'contact-messages/submit/';

  // static const String sendVerificationCode = 'users/send-code/';
  // static const String verify = 'users/verify/';
  // static const String login = 'users/login/';
  static const String loginByCode = 'users/code-login/';

  // static const String cities = 'cities/cities/';

  static const String updateFcm = 'fcm/devices/';
  static const String updateForUnAuthFcm = 'fcm/unauthenticated-devices/';

  // static const String profile = 'users/profile/';

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
