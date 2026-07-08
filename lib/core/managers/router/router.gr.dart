// // dart format width=80
// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // AutoRouterGenerator
// // **************************************************************************

// // ignore_for_file: type=lint
// // coverage:ignore-file

// // ignore_for_file: no_leading_underscores_for_library_prefixes

// import 'package:auto_route/auto_route.dart' as _i21;
// import 'package:flutter/material.dart' as _i22;
// import 'package:tallebplus_app/core/core.dart' as _i26;
// import 'package:tallebplus_app/features/auth/auth.dart' as _i24;
// import 'package:tallebplus_app/features/auth/presentation/screens/create_account_screen.dart'
//     as _i4;
// import 'package:tallebplus_app/features/auth/presentation/screens/forget_password_screen.dart'
//     as _i8;
// import 'package:tallebplus_app/features/auth/presentation/screens/login_screen.dart'
//     as _i10;
// import 'package:tallebplus_app/features/auth/presentation/screens/new_password_screen.dart'
//     as _i12;
// import 'package:tallebplus_app/features/auth/presentation/screens/verification_code_screen.dart'
//     as _i20;
// import 'package:tallebplus_app/features/base/presentation/screens/base_screen.dart'
//     as _i1;
// import 'package:tallebplus_app/features/favourites/presentation/screens/favourites_screen.dart'
//     as _i7;
// import 'package:tallebplus_app/features/home/home.dart' as _i25;
// import 'package:tallebplus_app/features/home/presentation/screens/home_screen.dart'
//     as _i9;
// import 'package:tallebplus_app/features/home/presentation/screens/service_screen.dart'
//     as _i17;
// import 'package:tallebplus_app/features/home/presentation/screens/services_screen.dart'
//     as _i18;
// import 'package:tallebplus_app/features/notifications/presentation/screens/notification_screen.dart'
//     as _i13;
// import 'package:tallebplus_app/features/orders/presentation/screens/new_order_screen.dart'
//     as _i11;
// import 'package:tallebplus_app/features/orders/presentation/screens/order_screen.dart'
//     as _i14;
// import 'package:tallebplus_app/features/orders/presentation/screens/orders_screen.dart'
//     as _i15;
// import 'package:tallebplus_app/features/profile/presentation/screens/change_password_screen.dart'
//     as _i2;
// import 'package:tallebplus_app/features/profile/presentation/screens/contact_us.dart'
//     as _i3;
// import 'package:tallebplus_app/features/profile/presentation/screens/delete_account.dart'
//     as _i5;
// import 'package:tallebplus_app/features/profile/presentation/screens/edit_profile_screen.dart'
//     as _i6;
// import 'package:tallebplus_app/features/profile/presentation/screens/profile_screen.dart'
//     as _i16;
// import 'package:tallebplus_app/features/profile/presentation/screens/static_screen.dart'
//     as _i19;
// import 'package:tallebplus_app/features/profile/profile.dart' as _i23;

// /// generated route for
// /// [_i1.BaseScreen]
// class BaseRoute extends _i21.PageRouteInfo<void> {
//   const BaseRoute({List<_i21.PageRouteInfo>? children})
//     : super(BaseRoute.name, initialChildren: children);

//   static const String name = 'BaseRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i1.BaseScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i2.ChangePasswordScreen]
// class ChangePasswordRoute extends _i21.PageRouteInfo<void> {
//   const ChangePasswordRoute({List<_i21.PageRouteInfo>? children})
//     : super(ChangePasswordRoute.name, initialChildren: children);

//   static const String name = 'ChangePasswordRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i2.ChangePasswordScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i3.ContactUsScreen]
// class ContactUsRoute extends _i21.PageRouteInfo<void> {
//   const ContactUsRoute({List<_i21.PageRouteInfo>? children})
//     : super(ContactUsRoute.name, initialChildren: children);

//   static const String name = 'ContactUsRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i3.ContactUsScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i4.CreateAccountScreen]
// class CreateAccountRoute extends _i21.PageRouteInfo<void> {
//   const CreateAccountRoute({List<_i21.PageRouteInfo>? children})
//     : super(CreateAccountRoute.name, initialChildren: children);

//   static const String name = 'CreateAccountRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i4.CreateAccountScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i5.DeleteAccountScreen]
// class DeleteAccountRoute extends _i21.PageRouteInfo<DeleteAccountRouteArgs> {
//   DeleteAccountRoute({
//     _i22.Key? key,
//     required _i23.ProfileBloc profileBloc,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          DeleteAccountRoute.name,
//          args: DeleteAccountRouteArgs(key: key, profileBloc: profileBloc),
//          initialChildren: children,
//        );

//   static const String name = 'DeleteAccountRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<DeleteAccountRouteArgs>();
//       return _i5.DeleteAccountScreen(
//         key: args.key,
//         profileBloc: args.profileBloc,
//       );
//     },
//   );
// }

// class DeleteAccountRouteArgs {
//   const DeleteAccountRouteArgs({this.key, required this.profileBloc});

//   final _i22.Key? key;

//   final _i23.ProfileBloc profileBloc;

//   @override
//   String toString() {
//     return 'DeleteAccountRouteArgs{key: $key, profileBloc: $profileBloc}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! DeleteAccountRouteArgs) return false;
//     return key == other.key && profileBloc == other.profileBloc;
//   }

//   @override
//   int get hashCode => key.hashCode ^ profileBloc.hashCode;
// }

// /// generated route for
// /// [_i6.EditProfileScreen]
// class EditProfileRoute extends _i21.PageRouteInfo<EditProfileRouteArgs> {
//   EditProfileRoute({
//     _i22.Key? key,
//     required _i23.ProfileBloc profileBloc,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          EditProfileRoute.name,
//          args: EditProfileRouteArgs(key: key, profileBloc: profileBloc),
//          initialChildren: children,
//        );

//   static const String name = 'EditProfileRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<EditProfileRouteArgs>();
//       return _i6.EditProfileScreen(
//         key: args.key,
//         profileBloc: args.profileBloc,
//       );
//     },
//   );
// }

// class EditProfileRouteArgs {
//   const EditProfileRouteArgs({this.key, required this.profileBloc});

//   final _i22.Key? key;

//   final _i23.ProfileBloc profileBloc;

//   @override
//   String toString() {
//     return 'EditProfileRouteArgs{key: $key, profileBloc: $profileBloc}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! EditProfileRouteArgs) return false;
//     return key == other.key && profileBloc == other.profileBloc;
//   }

//   @override
//   int get hashCode => key.hashCode ^ profileBloc.hashCode;
// }

// /// generated route for
// /// [_i7.FavouritesScreen]
// class FavouritesRoute extends _i21.PageRouteInfo<void> {
//   const FavouritesRoute({List<_i21.PageRouteInfo>? children})
//     : super(FavouritesRoute.name, initialChildren: children);

//   static const String name = 'FavouritesRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i7.FavouritesScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i8.ForgetPasswordScreen]
// class ForgetPasswordRoute extends _i21.PageRouteInfo<void> {
//   const ForgetPasswordRoute({List<_i21.PageRouteInfo>? children})
//     : super(ForgetPasswordRoute.name, initialChildren: children);

//   static const String name = 'ForgetPasswordRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i8.ForgetPasswordScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i9.HomeScreen]
// class HomeRoute extends _i21.PageRouteInfo<void> {
//   const HomeRoute({List<_i21.PageRouteInfo>? children})
//     : super(HomeRoute.name, initialChildren: children);

//   static const String name = 'HomeRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i9.HomeScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i10.LoginScreen]
// class LoginRoute extends _i21.PageRouteInfo<LoginRouteArgs> {
//   LoginRoute({
//     _i22.Key? key,
//     _i22.VoidCallback? onLoginSuccess,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          LoginRoute.name,
//          args: LoginRouteArgs(key: key, onLoginSuccess: onLoginSuccess),
//          initialChildren: children,
//        );

//   static const String name = 'LoginRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<LoginRouteArgs>(
//         orElse: () => const LoginRouteArgs(),
//       );
//       return _i10.LoginScreen(
//         key: args.key,
//         onLoginSuccess: args.onLoginSuccess,
//       );
//     },
//   );
// }

// class LoginRouteArgs {
//   const LoginRouteArgs({this.key, this.onLoginSuccess});

//   final _i22.Key? key;

//   final _i22.VoidCallback? onLoginSuccess;

//   @override
//   String toString() {
//     return 'LoginRouteArgs{key: $key, onLoginSuccess: $onLoginSuccess}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! LoginRouteArgs) return false;
//     return key == other.key && onLoginSuccess == other.onLoginSuccess;
//   }

//   @override
//   int get hashCode => key.hashCode ^ onLoginSuccess.hashCode;
// }

// /// generated route for
// /// [_i11.NewOrderScreen]
// class NewOrderRoute extends _i21.PageRouteInfo<void> {
//   const NewOrderRoute({List<_i21.PageRouteInfo>? children})
//     : super(NewOrderRoute.name, initialChildren: children);

//   static const String name = 'NewOrderRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i11.NewOrderScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i12.NewPasswordScreen]
// class NewPasswordRoute extends _i21.PageRouteInfo<NewPasswordRouteArgs> {
//   NewPasswordRoute({
//     _i22.Key? key,
//     required _i24.AuthenticationBloc authenticationBloc,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          NewPasswordRoute.name,
//          args: NewPasswordRouteArgs(
//            key: key,
//            authenticationBloc: authenticationBloc,
//          ),
//          initialChildren: children,
//        );

//   static const String name = 'NewPasswordRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<NewPasswordRouteArgs>();
//       return _i12.NewPasswordScreen(
//         key: args.key,
//         authenticationBloc: args.authenticationBloc,
//       );
//     },
//   );
// }

// class NewPasswordRouteArgs {
//   const NewPasswordRouteArgs({this.key, required this.authenticationBloc});

//   final _i22.Key? key;

//   final _i24.AuthenticationBloc authenticationBloc;

//   @override
//   String toString() {
//     return 'NewPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! NewPasswordRouteArgs) return false;
//     return key == other.key && authenticationBloc == other.authenticationBloc;
//   }

//   @override
//   int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
// }

// /// generated route for
// /// [_i13.NotificationScreen]
// class NotificationRoute extends _i21.PageRouteInfo<void> {
//   const NotificationRoute({List<_i21.PageRouteInfo>? children})
//     : super(NotificationRoute.name, initialChildren: children);

//   static const String name = 'NotificationRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i13.NotificationScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i14.OrderScreen]
// class OrderRoute extends _i21.PageRouteInfo<OrderRouteArgs> {
//   OrderRoute({
//     _i22.Key? key,
//     required String orderId,
//     required bool isMyOrder,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          OrderRoute.name,
//          args: OrderRouteArgs(key: key, orderId: orderId, isMyOrder: isMyOrder),
//          initialChildren: children,
//        );

//   static const String name = 'OrderRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<OrderRouteArgs>();
//       return _i14.OrderScreen(
//         key: args.key,
//         orderId: args.orderId,
//         isMyOrder: args.isMyOrder,
//       );
//     },
//   );
// }

// class OrderRouteArgs {
//   const OrderRouteArgs({
//     this.key,
//     required this.orderId,
//     required this.isMyOrder,
//   });

//   final _i22.Key? key;

//   final String orderId;

//   final bool isMyOrder;

//   @override
//   String toString() {
//     return 'OrderRouteArgs{key: $key, orderId: $orderId, isMyOrder: $isMyOrder}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! OrderRouteArgs) return false;
//     return key == other.key &&
//         orderId == other.orderId &&
//         isMyOrder == other.isMyOrder;
//   }

//   @override
//   int get hashCode => key.hashCode ^ orderId.hashCode ^ isMyOrder.hashCode;
// }

// /// generated route for
// /// [_i15.OrdersScreen]
// class OrdersRoute extends _i21.PageRouteInfo<void> {
//   const OrdersRoute({List<_i21.PageRouteInfo>? children})
//     : super(OrdersRoute.name, initialChildren: children);

//   static const String name = 'OrdersRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i15.OrdersScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i16.ProfileScreen]
// class ProfileRoute extends _i21.PageRouteInfo<void> {
//   const ProfileRoute({List<_i21.PageRouteInfo>? children})
//     : super(ProfileRoute.name, initialChildren: children);

//   static const String name = 'ProfileRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i16.ProfileScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i17.ServiceScreen]
// class ServiceRoute extends _i21.PageRouteInfo<ServiceRouteArgs> {
//   ServiceRoute({
//     _i22.Key? key,
//     required _i25.ServiceResult serviceData,
//     required bool isView,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          ServiceRoute.name,
//          args: ServiceRouteArgs(
//            key: key,
//            serviceData: serviceData,
//            isView: isView,
//          ),
//          initialChildren: children,
//        );

//   static const String name = 'ServiceRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<ServiceRouteArgs>();
//       return _i17.ServiceScreen(
//         key: args.key,
//         serviceData: args.serviceData,
//         isView: args.isView,
//       );
//     },
//   );
// }

// class ServiceRouteArgs {
//   const ServiceRouteArgs({
//     this.key,
//     required this.serviceData,
//     required this.isView,
//   });

//   final _i22.Key? key;

//   final _i25.ServiceResult serviceData;

//   final bool isView;

//   @override
//   String toString() {
//     return 'ServiceRouteArgs{key: $key, serviceData: $serviceData, isView: $isView}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! ServiceRouteArgs) return false;
//     return key == other.key &&
//         serviceData == other.serviceData &&
//         isView == other.isView;
//   }

//   @override
//   int get hashCode => key.hashCode ^ serviceData.hashCode ^ isView.hashCode;
// }

// /// generated route for
// /// [_i18.ServicesScreen]
// class ServicesRoute extends _i21.PageRouteInfo<void> {
//   const ServicesRoute({List<_i21.PageRouteInfo>? children})
//     : super(ServicesRoute.name, initialChildren: children);

//   static const String name = 'ServicesRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       return const _i18.ServicesScreen();
//     },
//   );
// }

// /// generated route for
// /// [_i19.StaticScreen]
// class StaticRoute extends _i21.PageRouteInfo<StaticRouteArgs> {
//   StaticRoute({
//     _i22.Key? key,
//     required _i26.SystemInfo systemInfo,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          StaticRoute.name,
//          args: StaticRouteArgs(key: key, systemInfo: systemInfo),
//          initialChildren: children,
//        );

//   static const String name = 'StaticRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<StaticRouteArgs>();
//       return _i19.StaticScreen(key: args.key, systemInfo: args.systemInfo);
//     },
//   );
// }

// class StaticRouteArgs {
//   const StaticRouteArgs({this.key, required this.systemInfo});

//   final _i22.Key? key;

//   final _i26.SystemInfo systemInfo;

//   @override
//   String toString() {
//     return 'StaticRouteArgs{key: $key, systemInfo: $systemInfo}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! StaticRouteArgs) return false;
//     return key == other.key && systemInfo == other.systemInfo;
//   }

//   @override
//   int get hashCode => key.hashCode ^ systemInfo.hashCode;
// }

// /// generated route for
// /// [_i20.VerificationCodeScreen]
// class VerificationCodeRoute
//     extends _i21.PageRouteInfo<VerificationCodeRouteArgs> {
//   VerificationCodeRoute({
//     _i22.Key? key,
//     required _i24.AuthenticationBloc authenticationBloc,
//     List<_i21.PageRouteInfo>? children,
//   }) : super(
//          VerificationCodeRoute.name,
//          args: VerificationCodeRouteArgs(
//            key: key,
//            authenticationBloc: authenticationBloc,
//          ),
//          initialChildren: children,
//        );

//   static const String name = 'VerificationCodeRoute';

//   static _i21.PageInfo page = _i21.PageInfo(
//     name,
//     builder: (data) {
//       final args = data.argsAs<VerificationCodeRouteArgs>();
//       return _i20.VerificationCodeScreen(
//         key: args.key,
//         authenticationBloc: args.authenticationBloc,
//       );
//     },
//   );
// }

// class VerificationCodeRouteArgs {
//   const VerificationCodeRouteArgs({this.key, required this.authenticationBloc});

//   final _i22.Key? key;

//   final _i24.AuthenticationBloc authenticationBloc;

//   @override
//   String toString() {
//     return 'VerificationCodeRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! VerificationCodeRouteArgs) return false;
//     return key == other.key && authenticationBloc == other.authenticationBloc;
//   }

//   @override
//   int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
// }
