// import '../../../core/core.dart';
// import '../../auth/auth.dart';
// import '../data/data.dart';
// import '../data/models/languages_model.dart';
// import '../data/params/contact_us.dart';

// part 'profile_event.dart';

// part 'profile_state.dart';

// part 'profile_bloc.freezed.dart';

// class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   final ProfileRepository _profileRepository;
//   final UserLocalDataSource _userLocalDataSource;

//   ProfileBloc(this._profileRepository, this._userLocalDataSource)
//     : super(const _Initial()) {
//     on<ProfileEvent>((ProfileEvent event, Emitter<ProfileState> emit) async {
//       await event.map(
//         getProfile: (_GetProfile event) => getProfile(event, emit),
//         updateProfile: (_UpdateProfile event) => updateProfile(event, emit),
//         changePassword: (_ChangePassword event) => changePassword(event, emit),
//         getLanguages: (_GetLanguages event) => getLanguages(event, emit),
//         setLanguage: (_SetLanguage event) => setLanguage(event, emit),
//         deactivateAccount:
//             (_DeactivateAccount value) => deleteAccount(event, emit),
//         getSystemInfo: (_GetSystemInfo value) => systemInfo(event, emit),
//         contactUs: (_ContactUs value) => contactUs(event, emit),
//       );
//     });
//   }

//   late UserData userData;
//   bool isSigned = PrefData.isSignedIn;
//   String versionNumber = "1.0.0";
//   String activeLanguage = LocalizationConfig.currentLanguage;

//   Future<String> getAppVersion() async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();

//     // The version string (e.g., '1.0.0')
//     String version = packageInfo.version;

//     // The build number (e.g., '1' from '1.0.0+1')
//     // String buildNumber = packageInfo.buildNumber;

//     versionNumber = version;

//     return versionNumber;
//   }

//   Future<void> getProfile(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$GetProfileImpl;
//       if (event.withLoading) {
//         emit(const ProfileState.loading());
//       }
//       await getAppVersion();
//       if (!isSigned) {
//         emit(const ProfileState.guestUser());

//         return;
//       }
//       AuthModel response = await _profileRepository.getProfile();

//       updateUser(response.data);

//       emit(ProfileState.getProfileSucceed(userData: response.data));
//     } on GeneralException catch (e) {
//       emit(ProfileState.failed(generalException: e));
//     }
//   }

//   Future<void> updateProfile(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$UpdateProfileImpl;
//       emit(const ProfileState.loadingUpdateProfile());
//       late AuthModel response;

//       response = await _profileRepository.updateProfile(
//         event.editProfileParams,
//       );
//       emit(const ProfileState.succeed());
//       updateUser(response.data);

//       emit(ProfileState.getProfileSucceed(userData: response.data));
//     } on GeneralException catch (e) {
//       emit(ProfileState.failedUpdateProfile(generalException: e));
//     }
//   }

//   Future<void> changePassword(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$ChangePasswordImpl;
//       emit(const ProfileState.changePasswordLoading());

//       await _profileRepository.changePassword(event.changePasswordParams);

//       emit(const ProfileState.changePasswordSucceed());
//     } on GeneralException catch (e) {
//       emit(ProfileState.changePasswordFailed(generalException: e));
//     }
//   }

//   Future<void> getLanguages(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$GetLanguagesImpl;
//       emit(const ProfileState.loadingLanguages());

//       LanguagesModel response = await _profileRepository.getLanguages();

//       emit(ProfileState.getLanguagesSucceed(languages: response.results));
//     } catch (e) {
//       emit(
//         ProfileState.languagesFailed(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }

//   Future<void> setLanguage(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$SetLanguageImpl;
//       emit(const ProfileState.loadingSetLanguage());
//       activeLanguage = event.language.code;
//       if (PrefData.isSignedIn) {
//         await Future.wait(<Future<void>>[
//           _profileRepository.setLanguage(event.language.code),
//           updateUser(userData.copyWith(languageCode: event.language.code)),
//         ]);
//       }

//       emit(const ProfileState.setLanguageSucceed());
//     } catch (e) {
//       emit(
//         ProfileState.setLanguageFailed(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }

//   Future<void> deleteAccount(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$DeactivateAccountImpl;
//       emit(const ProfileState.loadingDeactivateAccount());
//       await _profileRepository.deactivateAccount(event.message);
//       emit(const ProfileState.succeedDeactivateAccount());
//     } catch (e) {
//       emit(
//         ProfileState.failedDeactivateAccount(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }

//   Future<void> systemInfo(
//     ProfileEvent event,
//     Emitter<ProfileState> emit,
//   ) async {
//     try {
//       event as _$GetSystemInfoImpl;
//       emit(const ProfileState.loadingSystemInfo());
//       SystemInfoModel response = await _profileRepository.systemInfo();
//       emit(ProfileState.succeedSystemInfo(data: response));
//     } catch (e) {
//       emit(
//         ProfileState.failedSystemInfo(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }

//   Future<void> contactUs(ProfileEvent event, Emitter<ProfileState> emit) async {
//     try {
//       event as _$ContactUsImpl;
//       emit(const ProfileState.loading());
//       await _profileRepository.contactUs(event.contactUsParam);
//       emit(const ProfileState.succeed());
//     } catch (e) {
//       emit(
//         ProfileState.failed(
//           generalException: LocalException(message: e.toString()),
//         ),
//       );
//     }
//   }

//   Future<void> updateUser(UserData response) async {
//     userData = response;
//     await _userLocalDataSource.storeUser(response);
//   }
// }
