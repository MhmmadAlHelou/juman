// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';

export 'auto_router_observer.dart';
export 'router.gr.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: navigatorKey);
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    // CustomRoute(
    //   page: CreateAccountRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    CustomRoute(
      page: LoginRoute.page,
      // initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    // CustomRoute(
    //   page: ForgetPasswordRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: NewPasswordRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: VerificationCodeRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: DeleteAccountRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: StaticRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    CustomRoute(
      page: BaseRoute.page,
      initial: true,
      children: [
        CustomRoute(page: HomeRoute.page),

        CustomRoute(page: ProfileRoute.page),
        // CustomRoute(page: OrdersRoute.page),/////////////////////////////////-----------------------
        // CustomRoute(page: FavouritesRoute.page),
      ],
    ),
    CustomRoute(
      page: AddPropertyPage.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: MyPropertiesRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: MyPropertyDetailRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    // CustomRoute(
    //   page: EditProfileRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: ServiceRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: ServicesRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: NotificationRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),

    // CustomRoute(
    //   page: ContactUsRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: OrderRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),////////////////////////////////////---------------------------------------------------------
    // CustomRoute(
    //   page: ChangePasswordRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),
    // CustomRoute(
    //   page: NewOrderRoute.page,
    //   transitionsBuilder: TransitionsBuilders.fadeIn,
    // ),/////////////////////////----------------------------------------------------------
  ];
}
