import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/add_property_repository.dart';
import 'package:ewan/features/add_property/data/locations_repository.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/base/data/base_repository.dart';
import 'package:ewan/features/favourites/bloc/favourites_bloc.dart';
import 'package:ewan/features/favourites/data/favourites_repository.dart';
import 'package:ewan/features/home/bloc/property/property_cubit.dart';
import 'package:ewan/features/home/data/properties_repository.dart';
// import 'package:ewan/features/orders/bloc/orders_bloc.dart';/////////////////////

import 'package:ewan/features/profile/profile.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:get_it/get_it.dart';
import '../../../features/auth/bloc/authentication_bloc.dart';
import '../../../features/auth/data/data.dart';
import '../../../features/home/bloc/home_bloc.dart';
import '../../../features/home/data/home_repository.dart';
import '../../../features/notifications/notifications.dart';
import '../../core.dart';

GetIt getIt = GetIt.instance;

Future<void> serviceLocator() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  initPrefManager(preferences);

  getIt.registerSingleton(UserLocalDataSource());
  getIt.registerSingleton(AppManagerCubit(localDataSource: getIt()));
  getIt.registerLazySingleton<PermissionManager>(() => PermissionManagerImpl());
  // getIt.registerLazySingleton<NotificationManager>(
  //   () => NotificationManagerImpl(),
  // );
  getIt.registerSingleton<AppRouter>(AppRouter());

  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton(BaseRemoteDataSource(getIt()));

  repositories();

  cubits();
}

void initPrefManager(SharedPreferences preferences) =>
    getIt.registerLazySingleton<PreferenceManager>(
      () => PreferenceManagerImpl(preferences),
    );

void repositories() {
  // Base Feature
  getIt.registerFactory(() => AuthRepository(getIt()));
  // getIt.registerFactory(() => ProfileRepository(getIt()));
  getIt.registerFactory(() => HomeRepository(getIt()));
  getIt.registerLazySingleton<PropertiesRepository>(
    () => PropertiesRepositoryImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<LocationsRepository>(
    () => LocationsRepositoryImpl(getIt<DioClient>()),
  );
  getIt.registerLazySingleton<AddPropertyRepository>(
    () => AddPropertyRepositoryImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<FileUploadService>(
    () => FileUploadServiceImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<ReservationRepository>(
    () => ReservationRepositoryImpl(getIt<DioClient>()),
  );

  // getIt.registerFactory(() => NotificationRepository(getIt()));
  // // getIt.registerFactory(() => OrdersRepository(getIt()));--------------------------------
  // getIt.registerFactory(() => FavouritesRepository(getIt()));
}

void cubits() {
  // Auth Feature
  getIt.registerFactory(() => AuthenticationBloc(getIt(), getIt(), getIt()));
  // getIt.registerFactory(() => ProfileBloc(getIt(), getIt()));
  // getIt.registerFactory(() => NotificationBloc(getIt()));

  // Home Feature
  getIt.registerFactory(() => HomeBloc(getIt()));

  getIt.registerLazySingleton<PropertyCubit>(
    () => PropertyCubit(repository: getIt<PropertiesRepository>()),
  );

  getIt.registerFactory(
    () => AddPropertyCubit(
      repository: getIt<AddPropertyRepository>(),
      locationsRepository: getIt<LocationsRepository>(),
      uploadService: getIt<FileUploadService>(),
    ),
  );

  // getIt.registerFactory(() => OrdersBloc(getIt()));/////////////____________//////////////////////////////
  // getIt.registerFactory(() => FavouritesBloc(getIt()));
}
