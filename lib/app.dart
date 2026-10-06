import 'package:ewan/features/favourites/bloc/favourites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:app_links/app_links.dart';

import 'core/core.dart';

class App extends StatefulWidget {
  const App._internal();

  static const App instance = App._internal();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter appRouter;
  late final _appLinks = AppLinks();
  StreamSubscription<Uri?>? _sub;

  @override
  void initState() {
    super.initState();
    appRouter = Managers.route;
    // _handleInitialUri();
    // _handleIncomingLinks();
  }

  // void _handleIncomingLinks() {
  //   _sub = _appLinks.uriLinkStream.listen(
  //     (Uri? uri) {
  //       if (uri != null) {
  //         _handleUri(uri);
  //       }
  //     },
  //     onError: (Object error) {
  //       // Ignore errors; we don't want the app to crash for malformed incoming links.
  //     },
  //   );
  // }

  // Future<void> _handleInitialUri() async {
  //   try {
  //     final Uri? initialUri = await _appLinks.getInitialLink();
  //     if (initialUri != null) {
  //       _handleUri(initialUri);
  //     }
  //   } catch (_) {
  //     // ignore
  //   }
  // }

  // void _handleUri(Uri uri) {
  //   // Handle both custom scheme and universal links
  //   // Example universal link: https://tallebplus.com/order/<orderId>
  //   if ((uri.scheme == 'https' &&
  //           (uri.host == 'tallebplus.com' ||
  //               uri.host == 'www.tallebplus.com') &&
  //           uri.pathSegments.isNotEmpty &&
  //           uri.pathSegments.first == 'order') ||
  //       (uri.scheme == 'tallebplus' &&
  //           uri.host == 'order' &&
  //           uri.pathSegments.isNotEmpty)) {
  //     final String orderId =
  //         uri.pathSegments.length > 1
  //             ? uri.pathSegments[1]
  //             : uri.pathSegments.last;
  //     appRouter.push(OrderRoute(orderId: orderId, isMyOrder: false));
  //   } else if (uri.scheme == 'https' &&
  //       (uri.host == 'tallebplus.com' || uri.host == 'www.tallebplus.com')) {
  //     // If the app is not installed, the universal link will open in the browser (web fallback)
  //     // Optionally, you can redirect to the store if you want to force install
  //     // (This is usually handled by the web page itself, but you can document this logic)
  //     // Example: window.location.href = 'https://play.google.com/store/apps/details?id=com.tallebplus.app';
  //   }
  // }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<AppManagerCubit>(
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppManagerCubit>(
          create: (_) => getIt<AppManagerCubit>()..init(),
        ),
        BlocProvider<FavoritesCubit>(
          create: (_) => getIt<FavoritesCubit>()..loadFavorites(),
        ),
      ],
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          context.read<AppManagerCubit>().changeTextTheme(constraints);
          return BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (BuildContext context, AppManagerState state) {
              return MaterialApp.router(
                title: ConstantManager.appName,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: state.themeData,
                routerConfig: appRouter.config(
                  navigatorObservers: () => <NavigatorObserver>[MyObserver()],
                ),
                builder: (BuildContext context, Widget? child) {
                  final MediaQueryData data = MediaQuery.of(context);
                  return MediaQuery(
                    data: data.copyWith(
                      textScaler: TextScaler.noScaling,
                      alwaysUse24HourFormat: true,
                    ),
                    child: child!,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
