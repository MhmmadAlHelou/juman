// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i32;

import 'package:auto_route/auto_route.dart' as _i27;
import 'package:ewan/features/add_property/presentation/screens/add_property_page.dart'
    as _i1;
import 'package:ewan/features/auth/auth.dart' as _i30;
import 'package:ewan/features/auth/presentation/screens/create_account_screen.dart'
    as _i6;
import 'package:ewan/features/auth/presentation/screens/forget_password_screen.dart'
    as _i7;
import 'package:ewan/features/auth/presentation/screens/login_screen.dart'
    as _i12;
import 'package:ewan/features/auth/presentation/screens/new_password_screen.dart'
    as _i17;
import 'package:ewan/features/auth/presentation/screens/verification_code_screen.dart'
    as _i26;
import 'package:ewan/features/base/presentation/screens/base_screen.dart'
    as _i2;
import 'package:ewan/features/contact_support/presentation/screens/contact_support_screen.dart'
    as _i5;
import 'package:ewan/features/favourites/presentation/screens/favourites_screen.dart'
    as _i13;
import 'package:ewan/features/home/data/data.dart' as _i29;
import 'package:ewan/features/home/data/models/properties_model.dart' as _i34;
import 'package:ewan/features/home/presentation/screens/home_screen.dart'
    as _i8;
import 'package:ewan/features/host_reservation/presentation/Screens/host_reservations_screen.dart'
    as _i9;
import 'package:ewan/features/my_properties/presentation/screens/my_properties_screen.dart'
    as _i14;
import 'package:ewan/features/my_properties/presentation/screens/my_property_detail_screen.dart'
    as _i15;
import 'package:ewan/features/notifications/presentation/screens/notifications_screen.dart'
    as _i18;
import 'package:ewan/features/profile/bloc/profile_otp/profile_otp_cubit.dart'
    as _i31;
import 'package:ewan/features/profile/presentation/screens/change_email_screen.dart'
    as _i3;
import 'package:ewan/features/profile/presentation/screens/change_password_screen.dart'
    as _i4;
import 'package:ewan/features/profile/presentation/screens/identity_verification_screen.dart'
    as _i10;
import 'package:ewan/features/profile/presentation/screens/legal_privacy_screen.dart'
    as _i11;
import 'package:ewan/features/profile/presentation/screens/personal_information_screen.dart'
    as _i19;
import 'package:ewan/features/profile/presentation/screens/profile_otp_screen.dart'
    as _i20;
import 'package:ewan/features/profile/presentation/screens/profile_screen.dart'
    as _i21;
import 'package:ewan/features/reservation/data/models/reservation_model.dart'
    as _i33;
import 'package:ewan/features/reservation/presentation/Screens/my_trips_screen.dart'
    as _i16;
import 'package:ewan/features/reservation/presentation/Screens/reeserve_screen.dart'
    as _i24;
import 'package:ewan/features/reservation/presentation/Screens/reservation_confirmed_screen.dart'
    as _i22;
import 'package:ewan/features/reservation/presentation/Screens/reservation_details_screen.dart'
    as _i23;
import 'package:ewan/features/reservation/presentation/Screens/upload_receipt_screen.dart'
    as _i25;
import 'package:flutter/material.dart' as _i28;

/// generated route for
/// [_i1.AddPropertyPage]
class AddPropertyPage extends _i27.PageRouteInfo<AddPropertyPageArgs> {
  AddPropertyPage({
    _i28.Key? key,
    String? propertyId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         AddPropertyPage.name,
         args: AddPropertyPageArgs(key: key, propertyId: propertyId),
         initialChildren: children,
       );

  static const String name = 'AddPropertyPage';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddPropertyPageArgs>(
        orElse: () => const AddPropertyPageArgs(),
      );
      return _i1.AddPropertyPage(key: args.key, propertyId: args.propertyId);
    },
  );
}

class AddPropertyPageArgs {
  const AddPropertyPageArgs({this.key, this.propertyId});

  final _i28.Key? key;

  final String? propertyId;

  @override
  String toString() {
    return 'AddPropertyPageArgs{key: $key, propertyId: $propertyId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddPropertyPageArgs) return false;
    return key == other.key && propertyId == other.propertyId;
  }

  @override
  int get hashCode => key.hashCode ^ propertyId.hashCode;
}

/// generated route for
/// [_i2.BaseScreen]
class BaseRoute extends _i27.PageRouteInfo<void> {
  const BaseRoute({List<_i27.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i2.BaseScreen();
    },
  );
}

/// generated route for
/// [_i3.ChangeEmailScreen]
class ChangeEmailRoute extends _i27.PageRouteInfo<void> {
  const ChangeEmailRoute({List<_i27.PageRouteInfo>? children})
    : super(ChangeEmailRoute.name, initialChildren: children);

  static const String name = 'ChangeEmailRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChangeEmailScreen();
    },
  );
}

/// generated route for
/// [_i4.ChangePasswordScreen]
class ChangePasswordRoute extends _i27.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i27.PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i4.ChangePasswordScreen();
    },
  );
}

/// generated route for
/// [_i5.ContactSupportScreen]
class ContactSupportRoute extends _i27.PageRouteInfo<void> {
  const ContactSupportRoute({List<_i27.PageRouteInfo>? children})
    : super(ContactSupportRoute.name, initialChildren: children);

  static const String name = 'ContactSupportRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i5.ContactSupportScreen();
    },
  );
}

/// generated route for
/// [_i6.CreateAccountScreen]
class CreateAccountRoute extends _i27.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i27.PageRouteInfo>? children})
    : super(CreateAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAccountRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i6.CreateAccountScreen();
    },
  );
}

/// generated route for
/// [_i7.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i27.PageRouteInfo<void> {
  const ForgetPasswordRoute({List<_i27.PageRouteInfo>? children})
    : super(ForgetPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgetPasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i7.ForgetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i27.PageRouteInfo<void> {
  const HomeRoute({List<_i27.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomeScreen();
    },
  );
}

/// generated route for
/// [_i9.HostReservationsScreen]
class HostReservationsRoute extends _i27.PageRouteInfo<void> {
  const HostReservationsRoute({List<_i27.PageRouteInfo>? children})
    : super(HostReservationsRoute.name, initialChildren: children);

  static const String name = 'HostReservationsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i9.HostReservationsScreen();
    },
  );
}

/// generated route for
/// [_i10.IdentityVerificationScreen]
class IdentityVerificationRoute extends _i27.PageRouteInfo<void> {
  const IdentityVerificationRoute({List<_i27.PageRouteInfo>? children})
    : super(IdentityVerificationRoute.name, initialChildren: children);

  static const String name = 'IdentityVerificationRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i10.IdentityVerificationScreen();
    },
  );
}

/// generated route for
/// [_i11.LegalPrivacyScreen]
class LegalPrivacyRoute extends _i27.PageRouteInfo<void> {
  const LegalPrivacyRoute({List<_i27.PageRouteInfo>? children})
    : super(LegalPrivacyRoute.name, initialChildren: children);

  static const String name = 'LegalPrivacyRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i11.LegalPrivacyScreen();
    },
  );
}

/// generated route for
/// [_i12.LoginScreen]
class LoginRoute extends _i27.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i28.Key? key,
    _i28.VoidCallback? onLoginSuccess,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onLoginSuccess: onLoginSuccess),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i12.LoginScreen(
        key: args.key,
        onLoginSuccess: args.onLoginSuccess,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginSuccess});

  final _i28.Key? key;

  final _i28.VoidCallback? onLoginSuccess;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginSuccess: $onLoginSuccess}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginRouteArgs) return false;
    return key == other.key && onLoginSuccess == other.onLoginSuccess;
  }

  @override
  int get hashCode => key.hashCode ^ onLoginSuccess.hashCode;
}

/// generated route for
/// [_i13.MyFavoritesScreen]
class MyFavoritesRoute extends _i27.PageRouteInfo<void> {
  const MyFavoritesRoute({List<_i27.PageRouteInfo>? children})
    : super(MyFavoritesRoute.name, initialChildren: children);

  static const String name = 'MyFavoritesRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i13.MyFavoritesScreen();
    },
  );
}

/// generated route for
/// [_i14.MyPropertiesScreen]
class MyPropertiesRoute extends _i27.PageRouteInfo<void> {
  const MyPropertiesRoute({List<_i27.PageRouteInfo>? children})
    : super(MyPropertiesRoute.name, initialChildren: children);

  static const String name = 'MyPropertiesRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i14.MyPropertiesScreen();
    },
  );
}

/// generated route for
/// [_i15.MyPropertyDetailScreen]
class MyPropertyDetailRoute
    extends _i27.PageRouteInfo<MyPropertyDetailRouteArgs> {
  MyPropertyDetailRoute({
    _i28.Key? key,
    required _i29.PropertiesModel property,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         MyPropertyDetailRoute.name,
         args: MyPropertyDetailRouteArgs(key: key, property: property),
         initialChildren: children,
       );

  static const String name = 'MyPropertyDetailRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyPropertyDetailRouteArgs>();
      return _i15.MyPropertyDetailScreen(
        key: args.key,
        property: args.property,
      );
    },
  );
}

class MyPropertyDetailRouteArgs {
  const MyPropertyDetailRouteArgs({this.key, required this.property});

  final _i28.Key? key;

  final _i29.PropertiesModel property;

  @override
  String toString() {
    return 'MyPropertyDetailRouteArgs{key: $key, property: $property}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyPropertyDetailRouteArgs) return false;
    return key == other.key && property == other.property;
  }

  @override
  int get hashCode => key.hashCode ^ property.hashCode;
}

/// generated route for
/// [_i16.MyTripsScreen]
class MyTripsRoute extends _i27.PageRouteInfo<void> {
  const MyTripsRoute({List<_i27.PageRouteInfo>? children})
    : super(MyTripsRoute.name, initialChildren: children);

  static const String name = 'MyTripsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i16.MyTripsScreen();
    },
  );
}

/// generated route for
/// [_i17.NewPasswordScreen]
class NewPasswordRoute extends _i27.PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    _i28.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         NewPasswordRoute.name,
         args: NewPasswordRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'NewPasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewPasswordRouteArgs>();
      return _i17.NewPasswordScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class NewPasswordRouteArgs {
  const NewPasswordRouteArgs({this.key, required this.authenticationBloc});

  final _i28.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NewPasswordRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}

/// generated route for
/// [_i18.NotificationsScreen]
class NotificationsRoute extends _i27.PageRouteInfo<void> {
  const NotificationsRoute({List<_i27.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i18.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i19.PersonalInformationScreen]
class PersonalInformationRoute extends _i27.PageRouteInfo<void> {
  const PersonalInformationRoute({List<_i27.PageRouteInfo>? children})
    : super(PersonalInformationRoute.name, initialChildren: children);

  static const String name = 'PersonalInformationRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i19.PersonalInformationScreen();
    },
  );
}

/// generated route for
/// [_i20.ProfileOtpScreen]
class ProfileOtpRoute extends _i27.PageRouteInfo<ProfileOtpRouteArgs> {
  ProfileOtpRoute({
    _i28.Key? key,
    required _i31.ProfileOtpPurpose purpose,
    required _i32.Future<void> Function() onResend,
    String? newEmail,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ProfileOtpRoute.name,
         args: ProfileOtpRouteArgs(
           key: key,
           purpose: purpose,
           onResend: onResend,
           newEmail: newEmail,
         ),
         initialChildren: children,
       );

  static const String name = 'ProfileOtpRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileOtpRouteArgs>();
      return _i20.ProfileOtpScreen(
        key: args.key,
        purpose: args.purpose,
        onResend: args.onResend,
        newEmail: args.newEmail,
      );
    },
  );
}

class ProfileOtpRouteArgs {
  const ProfileOtpRouteArgs({
    this.key,
    required this.purpose,
    required this.onResend,
    this.newEmail,
  });

  final _i28.Key? key;

  final _i31.ProfileOtpPurpose purpose;

  final _i32.Future<void> Function() onResend;

  final String? newEmail;

  @override
  String toString() {
    return 'ProfileOtpRouteArgs{key: $key, purpose: $purpose, onResend: $onResend, newEmail: $newEmail}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileOtpRouteArgs) return false;
    return key == other.key &&
        purpose == other.purpose &&
        newEmail == other.newEmail;
  }

  @override
  int get hashCode => key.hashCode ^ purpose.hashCode ^ newEmail.hashCode;
}

/// generated route for
/// [_i21.ProfileScreen]
class ProfileRoute extends _i27.PageRouteInfo<void> {
  const ProfileRoute({List<_i27.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i22.ReservationConfirmedScreen]
class ReservationConfirmedRoute
    extends _i27.PageRouteInfo<ReservationConfirmedRouteArgs> {
  ReservationConfirmedRoute({
    _i28.Key? key,
    required _i33.ReservationModel reservation,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ReservationConfirmedRoute.name,
         args: ReservationConfirmedRouteArgs(
           key: key,
           reservation: reservation,
         ),
         initialChildren: children,
       );

  static const String name = 'ReservationConfirmedRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReservationConfirmedRouteArgs>();
      return _i22.ReservationConfirmedScreen(
        key: args.key,
        reservation: args.reservation,
      );
    },
  );
}

class ReservationConfirmedRouteArgs {
  const ReservationConfirmedRouteArgs({this.key, required this.reservation});

  final _i28.Key? key;

  final _i33.ReservationModel reservation;

  @override
  String toString() {
    return 'ReservationConfirmedRouteArgs{key: $key, reservation: $reservation}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReservationConfirmedRouteArgs) return false;
    return key == other.key && reservation == other.reservation;
  }

  @override
  int get hashCode => key.hashCode ^ reservation.hashCode;
}

/// generated route for
/// [_i23.ReservationDetailsScreen]
class ReservationDetailsRoute
    extends _i27.PageRouteInfo<ReservationDetailsRouteArgs> {
  ReservationDetailsRoute({
    _i28.Key? key,
    required String reservationId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ReservationDetailsRoute.name,
         args: ReservationDetailsRouteArgs(
           key: key,
           reservationId: reservationId,
         ),
         initialChildren: children,
       );

  static const String name = 'ReservationDetailsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReservationDetailsRouteArgs>();
      return _i23.ReservationDetailsScreen(
        key: args.key,
        reservationId: args.reservationId,
      );
    },
  );
}

class ReservationDetailsRouteArgs {
  const ReservationDetailsRouteArgs({this.key, required this.reservationId});

  final _i28.Key? key;

  final String reservationId;

  @override
  String toString() {
    return 'ReservationDetailsRouteArgs{key: $key, reservationId: $reservationId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReservationDetailsRouteArgs) return false;
    return key == other.key && reservationId == other.reservationId;
  }

  @override
  int get hashCode => key.hashCode ^ reservationId.hashCode;
}

/// generated route for
/// [_i24.ReserveScreen]
class ReserveRoute extends _i27.PageRouteInfo<ReserveRouteArgs> {
  ReserveRoute({
    _i28.Key? key,
    required _i34.PropertiesModel property,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numberOfGuests,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ReserveRoute.name,
         args: ReserveRouteArgs(
           key: key,
           property: property,
           checkIn: checkIn,
           checkOut: checkOut,
           numberOfGuests: numberOfGuests,
         ),
         initialChildren: children,
       );

  static const String name = 'ReserveRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReserveRouteArgs>();
      return _i24.ReserveScreen(
        key: args.key,
        property: args.property,
        checkIn: args.checkIn,
        checkOut: args.checkOut,
        numberOfGuests: args.numberOfGuests,
      );
    },
  );
}

class ReserveRouteArgs {
  const ReserveRouteArgs({
    this.key,
    required this.property,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfGuests,
  });

  final _i28.Key? key;

  final _i34.PropertiesModel property;

  final DateTime checkIn;

  final DateTime checkOut;

  final int numberOfGuests;

  @override
  String toString() {
    return 'ReserveRouteArgs{key: $key, property: $property, checkIn: $checkIn, checkOut: $checkOut, numberOfGuests: $numberOfGuests}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReserveRouteArgs) return false;
    return key == other.key &&
        property == other.property &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        numberOfGuests == other.numberOfGuests;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      property.hashCode ^
      checkIn.hashCode ^
      checkOut.hashCode ^
      numberOfGuests.hashCode;
}

/// generated route for
/// [_i25.UploadReceiptScreen]
class UploadReceiptRoute extends _i27.PageRouteInfo<UploadReceiptRouteArgs> {
  UploadReceiptRoute({
    _i28.Key? key,
    required _i33.ReservationModel reservation,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         UploadReceiptRoute.name,
         args: UploadReceiptRouteArgs(key: key, reservation: reservation),
         initialChildren: children,
       );

  static const String name = 'UploadReceiptRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UploadReceiptRouteArgs>();
      return _i25.UploadReceiptScreen(
        key: args.key,
        reservation: args.reservation,
      );
    },
  );
}

class UploadReceiptRouteArgs {
  const UploadReceiptRouteArgs({this.key, required this.reservation});

  final _i28.Key? key;

  final _i33.ReservationModel reservation;

  @override
  String toString() {
    return 'UploadReceiptRouteArgs{key: $key, reservation: $reservation}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UploadReceiptRouteArgs) return false;
    return key == other.key && reservation == other.reservation;
  }

  @override
  int get hashCode => key.hashCode ^ reservation.hashCode;
}

/// generated route for
/// [_i26.VerificationCodeScreen]
class VerificationCodeRoute
    extends _i27.PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    _i28.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         VerificationCodeRoute.name,
         args: VerificationCodeRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'VerificationCodeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationCodeRouteArgs>();
      return _i26.VerificationCodeScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({this.key, required this.authenticationBloc});

  final _i28.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VerificationCodeRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}
