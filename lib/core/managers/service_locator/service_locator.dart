import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/add_property_repository.dart';
import 'package:ewan/features/add_property/data/locations_repository.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/base/data/base_repository.dart';
import 'package:ewan/features/home/bloc/locations_cubit.dart';
import 'package:ewan/features/home/bloc/property_cubit.dart';
import 'package:ewan/features/home/data/properties_repository.dart';
import 'package:ewan/features/my_properties/bloc/my_properties_cubit.dart';
import 'package:ewan/features/my_properties/data/my_properties_repository.dart';
import 'package:ewan/features/profile/data/profile_repository.dart';
import 'package:ewan/features/reservation/data/payment_methods_repository.dart';

import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:get_it/get_it.dart';
import '../../../features/auth/bloc/authentication_bloc.dart';
import '../../../features/auth/data/data.dart';
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

  getIt.registerLazySingleton<MyPropertiesRepository>(
    () => MyPropertiesRepositoryImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<ReservationRepository>(
    () => ReservationRepositoryImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<PaymentMethodsRepository>(
    () => PaymentMethodsRepositoryImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(getIt<DioClient>()),
  );

  // getIt.registerFactory(() => NotificationRepository(getIt()));
  // getIt.registerFactory(() => FavouritesRepository(getIt()));
}

void cubits() {
  // Auth Feature
  getIt.registerFactory(() => AuthenticationBloc(getIt(), getIt(), getIt()));
  // getIt.registerFactory(() => ProfileBloc(getIt(), getIt()));
  // getIt.registerFactory(() => NotificationBloc(getIt()));

  // Home Feature
  getIt.registerFactory<PropertyCubit>(
    () => PropertyCubit(repository: getIt<PropertiesRepository>()),
  );
  getIt.registerLazySingleton<LocationsCubit>(
    () => LocationsCubit(repository: getIt<LocationsRepository>()),
  );

  getIt.registerFactory(
    () => AddPropertyCubit(
      repository: getIt<AddPropertyRepository>(),
      locationsRepository: getIt<LocationsRepository>(),
      uploadService: getIt<FileUploadService>(),
    ),
  );

  getIt.registerFactory(
    () => MyPropertiesCubit(getIt<MyPropertiesRepository>()),
  );
  // getIt.registerFactory(() => OrdersBloc(getIt()));/////////////____________//////////////////////////////
  // getIt.registerFactory(() => FavouritesBloc(getIt()));
}
