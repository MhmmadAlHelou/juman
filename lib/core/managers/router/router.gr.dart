// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:ewan/features/add_property/presentation/screens/add_property_page.dart'
    as _i1;
import 'package:ewan/features/auth/presentation/screens/create_account_screen.dart'
    as _i3;
import 'package:ewan/features/auth/presentation/screens/login_screen.dart'
    as _i5;
import 'package:ewan/features/base/presentation/screens/base_screen.dart'
    as _i2;
import 'package:ewan/features/home/data/data.dart' as _i13;
import 'package:ewan/features/home/home.dart' as _i14;
import 'package:ewan/features/home/presentation/screens/home_screen.dart'
    as _i4;
import 'package:ewan/features/home/presentation/screens/service_screen.dart'
    as _i9;
import 'package:ewan/features/home/presentation/screens/services_screen.dart'
    as _i10;
import 'package:ewan/features/my_properties/presentation/screens/my_properties_screen.dart'
    as _i6;
import 'package:ewan/features/my_properties/presentation/screens/my_property_detail_screen.dart'
    as _i7;
import 'package:ewan/features/profile/presentation/screens/profile_screen.dart'
    as _i8;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.AddPropertyPage]
class AddPropertyPage extends _i11.PageRouteInfo<AddPropertyPageArgs> {
  AddPropertyPage({
    _i12.Key? key,
    String? propertyId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         AddPropertyPage.name,
         args: AddPropertyPageArgs(key: key, propertyId: propertyId),
         initialChildren: children,
       );

  static const String name = 'AddPropertyPage';

  static _i11.PageInfo page = _i11.PageInfo(
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

  final _i12.Key? key;

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
class BaseRoute extends _i11.PageRouteInfo<void> {
  const BaseRoute({List<_i11.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.BaseScreen();
    },
  );
}

/// generated route for
/// [_i3.CreateAccountScreen]
class CreateAccountRoute extends _i11.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i11.PageRouteInfo>? children})
    : super(CreateAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAccountRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.CreateAccountScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i12.Key? key,
    _i12.VoidCallback? onLoginSuccess,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onLoginSuccess: onLoginSuccess),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i5.LoginScreen(
        key: args.key,
        onLoginSuccess: args.onLoginSuccess,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginSuccess});

  final _i12.Key? key;

  final _i12.VoidCallback? onLoginSuccess;

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
/// [_i6.MyPropertiesScreen]
class MyPropertiesRoute extends _i11.PageRouteInfo<void> {
  const MyPropertiesRoute({List<_i11.PageRouteInfo>? children})
    : super(MyPropertiesRoute.name, initialChildren: children);

  static const String name = 'MyPropertiesRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.MyPropertiesScreen();
    },
  );
}

/// generated route for
/// [_i7.MyPropertyDetailScreen]
class MyPropertyDetailRoute
    extends _i11.PageRouteInfo<MyPropertyDetailRouteArgs> {
  MyPropertyDetailRoute({
    _i12.Key? key,
    required _i13.PropertiesModel property,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         MyPropertyDetailRoute.name,
         args: MyPropertyDetailRouteArgs(key: key, property: property),
         initialChildren: children,
       );

  static const String name = 'MyPropertyDetailRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyPropertyDetailRouteArgs>();
      return _i7.MyPropertyDetailScreen(key: args.key, property: args.property);
    },
  );
}

class MyPropertyDetailRouteArgs {
  const MyPropertyDetailRouteArgs({this.key, required this.property});

  final _i12.Key? key;

  final _i13.PropertiesModel property;

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
/// [_i8.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i9.ServiceScreen]
class ServiceRoute extends _i11.PageRouteInfo<ServiceRouteArgs> {
  ServiceRoute({
    _i12.Key? key,
    required _i14.ServiceResult serviceData,
    required bool isView,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         ServiceRoute.name,
         args: ServiceRouteArgs(
           key: key,
           serviceData: serviceData,
           isView: isView,
         ),
         initialChildren: children,
       );

  static const String name = 'ServiceRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ServiceRouteArgs>();
      return _i9.ServiceScreen(
        key: args.key,
        serviceData: args.serviceData,
        isView: args.isView,
      );
    },
  );
}

class ServiceRouteArgs {
  const ServiceRouteArgs({
    this.key,
    required this.serviceData,
    required this.isView,
  });

  final _i12.Key? key;

  final _i14.ServiceResult serviceData;

  final bool isView;

  @override
  String toString() {
    return 'ServiceRouteArgs{key: $key, serviceData: $serviceData, isView: $isView}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ServiceRouteArgs) return false;
    return key == other.key &&
        serviceData == other.serviceData &&
        isView == other.isView;
  }

  @override
  int get hashCode => key.hashCode ^ serviceData.hashCode ^ isView.hashCode;
}

/// generated route for
/// [_i10.ServicesScreen]
class ServicesRoute extends _i11.PageRouteInfo<void> {
  const ServicesRoute({List<_i11.PageRouteInfo>? children})
    : super(ServicesRoute.name, initialChildren: children);

  static const String name = 'ServicesRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.ServicesScreen();
    },
  );
}
