// import 'package:tallebplus_app/features/base/data/base_repository.dart';
// import 'package:tallebplus_app/features/favourites/bloc/favourites_bloc.dart';
// import 'package:tallebplus_app/features/favourites/data/favourites_repository.dart';
// import 'package:tallebplus_app/features/orders/bloc/orders_bloc.dart';

// import 'package:tallebplus_app/features/profile/profile.dart';
// import 'package:get_it/get_it.dart';
// import '../../../features/auth/bloc/authentication_bloc.dart';
// import '../../../features/auth/data/data.dart';
// import '../../../features/home/bloc/home_bloc.dart';
// import '../../../features/home/data/home_repository.dart';
// import '../../../features/notifications/notification.dart';
// import '../../../features/orders/data/orders_repository.dart';
// import '../../core.dart';

// GetIt getIt = GetIt.instance;

// Future<void> serviceLocator() async {
//   final SharedPreferences preferences = await SharedPreferences.getInstance();
//   initPrefManager(preferences);

//   getIt.registerSingleton(UserLocalDataSource());
//   getIt.registerSingleton(AppManagerCubit(localDataSource: getIt()));
//   getIt.registerLazySingleton<PermissionManager>(() => PermissionManagerImpl());
//   getIt.registerLazySingleton<NotificationManager>(
//     () => NotificationManagerImpl(),
//   );
//   getIt.registerSingleton<AppRouter>(AppRouter());

//   getIt.registerSingleton<DioClient>(DioClient());
//   getIt.registerSingleton(BaseRemoteDataSource(getIt()));

//   repositories();

//   cubits();
// }

// void initPrefManager(SharedPreferences preferences) =>
//     getIt.registerLazySingleton<PreferenceManager>(
//       () => PreferenceManagerImpl(preferences),
//     );

// void repositories() {
//   // Base Feature
//   getIt.registerFactory(() => AuthRepository(getIt()));
//   getIt.registerFactory(() => ProfileRepository(getIt()));
//   getIt.registerFactory(() => HomeRepository(getIt()));
//   getIt.registerFactory(() => NotificationRepository(getIt()));
//   getIt.registerFactory(() => OrdersRepository(getIt()));
//   getIt.registerFactory(() => FavouritesRepository(getIt()));
// }

// void cubits() {
//   // Auth Feature
//   getIt.registerFactory(() => AuthenticationBloc(getIt(), getIt(), getIt()));
//   getIt.registerFactory(() => ProfileBloc(getIt(), getIt()));
//   getIt.registerFactory(() => NotificationBloc(getIt()));
//   // Home

//   getIt.registerFactory(() => HomeBloc(getIt()));
//   getIt.registerFactory(() => OrdersBloc(getIt()));
//   getIt.registerFactory(() => FavouritesBloc(getIt()));
// }
