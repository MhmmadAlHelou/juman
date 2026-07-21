// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:ewan/features/auth/presentation/screens/create_account_screen.dart'
    as _i2;
import 'package:ewan/features/auth/presentation/screens/login_screen.dart'
    as _i4;
import 'package:ewan/features/base/presentation/screens/base_screen.dart'
    as _i1;
import 'package:ewan/features/home/home.dart' as _i9;
import 'package:ewan/features/home/presentation/screens/home_screen.dart'
    as _i3;
import 'package:ewan/features/home/presentation/screens/service_screen.dart'
    as _i5;
import 'package:ewan/features/home/presentation/screens/services_screen.dart'
    as _i6;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i7.PageRouteInfo<void> {
  const BaseRoute({List<_i7.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.CreateAccountScreen]
class CreateAccountRoute extends _i7.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i7.PageRouteInfo>? children})
    : super(CreateAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAccountRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateAccountScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    _i8.VoidCallback? onLoginSuccess,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onLoginSuccess: onLoginSuccess),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i4.LoginScreen(
        key: args.key,
        onLoginSuccess: args.onLoginSuccess,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginSuccess});

  final _i8.Key? key;

  final _i8.VoidCallback? onLoginSuccess;

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
/// [_i5.ServiceScreen]
class ServiceRoute extends _i7.PageRouteInfo<ServiceRouteArgs> {
  ServiceRoute({
    _i8.Key? key,
    required _i9.ServiceResult serviceData,
    required bool isView,
    List<_i7.PageRouteInfo>? children,
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

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ServiceRouteArgs>();
      return _i5.ServiceScreen(
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

  final _i8.Key? key;

  final _i9.ServiceResult serviceData;

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
/// [_i6.ServicesScreen]
class ServicesRoute extends _i7.PageRouteInfo<void> {
  const ServicesRoute({List<_i7.PageRouteInfo>? children})
    : super(ServicesRoute.name, initialChildren: children);

  static const String name = 'ServicesRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.ServicesScreen();
    },
  );
}
