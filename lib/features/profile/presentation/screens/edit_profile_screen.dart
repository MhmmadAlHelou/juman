// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/auth/auth.dart';
// import 'package:ewan/features/auth/data/models/city_model.dart';

// import '../../profile.dart';

// @RoutePage()
// class EditProfileScreen extends StatelessWidget {
//   const EditProfileScreen({super.key, required this.profileBloc});

//   final ProfileBloc profileBloc;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProfileBloc>.value(
//       value: profileBloc,
//       child: const EditProfileView(),
//     );
//   }
// }

// class EditProfileView extends StatefulWidget {
//   const EditProfileView({super.key});

//   @override
//   State<EditProfileView> createState() => _EditProfileViewState();
// }

// class _EditProfileViewState extends State<EditProfileView> {
//   late ProfileBloc _profileBloc;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
//   Map<String, String> externalErrors = <String, String>{};
//   late ValueNotifier<PlatformFile?> selectedImageNotifier;

//   late TextEditingController phoneNumberTextEditingController;
//   late FocusNode phoneNumberFocusNode;
//   late TextFieldControllerImpl phoneNumberController;

//   late TextEditingController firstNameTextEditingController;
//   late FocusNode firstNameFocusNode;
//   late TextFieldControllerImpl firstNameController;

//   late TextEditingController lastNameTextEditingController;
//   late FocusNode lastNameFocusNode;
//   late TextFieldControllerImpl lastNameController;

//   late TextEditingController addressTextEditingController;
//   late FocusNode addressFocusNode;
//   late TextFieldControllerImpl addressController;

//   CityResult? selectedCity;
//   late FocusNode cityFocusNode;

//   late String imageUrl;

//   late GlobalButtonController globalButtonController;
//   late FocusNode submitButtonFocusNode;

//   @override
//   void initState() {
//     super.initState();
//     _profileBloc = context.read<ProfileBloc>();
//     phoneNumberTextEditingController = TextEditingController(
//       text: _profileBloc.userData.phoneNumber,
//     );
//     phoneNumberFocusNode = FocusNode();
//     phoneNumberController = TextFieldControllerImpl('');

//     firstNameTextEditingController = TextEditingController(
//       text: _profileBloc.userData.firstName,
//     );
//     firstNameFocusNode = FocusNode();
//     firstNameController = TextFieldControllerImpl('');

//     lastNameTextEditingController = TextEditingController(
//       text: _profileBloc.userData.lastName,
//     );
//     lastNameFocusNode = FocusNode();
//     lastNameController = TextFieldControllerImpl('');

//     addressTextEditingController = TextEditingController(
//       text: _profileBloc.userData.address,
//     );
//     addressFocusNode = FocusNode();
//     addressController = TextFieldControllerImpl('');

//     globalButtonController = GlobalButtonController();
//     submitButtonFocusNode = FocusNode();

//     cityFocusNode = FocusNode();
//     selectedCity = _profileBloc.userData.city;

//     imageUrl = _profileBloc.userData.image ?? "";
//     selectedImageNotifier = ValueNotifier<PlatformFile?>(null);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: GlobalAppBar(
//         backButton: true,
//         title: context.tr(LocaleKeys.editProfile),
//         centerTitle: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 0),
//         child: BlocListener<ProfileBloc, ProfileState>(
//           listenWhen: (ProfileState previous, ProfileState current) =>
//               current.runtimeType ==
//                   const ProfileState.getProfileSucceed().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.loadingUpdateProfile().runtimeType ||
//               current.runtimeType == const ProfileState.succeed().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.emailNeedVerify().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.emailNeedVerify().runtimeType ||
//               current.runtimeType ==
//                   const ProfileState.failedUpdateProfile().runtimeType,
//           listener: (BuildContext context, ProfileState state) {
//             state.maybeWhen(
//               loadingUpdateProfile: () =>
//                   globalButtonController.changeToLoader(),
//               failedUpdateProfile: (GeneralException? generalException) {
//                 globalButtonController.value = null;
//                 externalErrors.addAll(
//                   generalException?.errors ?? <String, String>{},
//                 );
//                 formKey.currentState?.validate();
//                 if (generalException?.message.isNotEmpty ?? false) {
//                   showSnackBar(
//                     context: context,
//                     message: generalException?.message,
//                     isError: true,
//                   );
//                 }
//               },
//               succeed: (String? message) {
//                 globalButtonController.value = null;
//                 // showSnackBar(
//                 //   context: context,
//                 //   message: LocaleKeys.profileUpdatedSuccessfully.tr(),
//                 // );
//               },
//               getProfileSucceed: (UserData? userData) {
//                 globalButtonController.value = null;
//                 context.maybePop();
//               },
//               orElse: () {},
//             );
//           },
//           child: LayoutBuilder(
//             builder: (BuildContext context, BoxConstraints constraints) {
//               final double width = constraints.maxWidth;
//               final double height = constraints.maxHeight;

//               return SizedBox(
//                 height: height,
//                 width: width,
//                 child: SingleChildScrollView(
//                   padding: EdgeInsetsDirectional.symmetric(
//                     horizontal: ResponsiveUtils.responsiveSize(
//                       context,
//                       mobile: Dimensions.space16,
//                       tablet: width * 0.2,
//                       desktop: width * 0.2,
//                     ),
//                   ),
//                   child: Form(
//                     key: formKey,
//                     autovalidateMode: AutovalidateMode.onUserInteraction,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Center(child: buildImageWidget()),
//                         const SizedBox(height: Dimensions.space30),
//                         labelText(LocaleKeys.firstName),
//                         firstNameTextField(),
//                         const SizedBox(height: Dimensions.space24),
//                         labelText(LocaleKeys.lastName),
//                         lastNameTextField(),
//                         const SizedBox(height: Dimensions.space24),
//                         labelText(LocaleKeys.city),
//                         cityField(),
//                         const SizedBox(height: Dimensions.space24),
//                         labelText(LocaleKeys.address),
//                         addressTextField(),
//                         const SizedBox(height: Dimensions.space24),
//                         labelText(LocaleKeys.phoneNumber),
//                         phoneNumberTextField(),
//                         const SizedBox(height: Dimensions.space30),
//                         submitButton(),
//                         const SizedBox(height: Dimensions.space24),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   ValueListenableBuilder<PlatformFile?> buildImageWidget() {
//     return ValueListenableBuilder<PlatformFile?>(
//       valueListenable: selectedImageNotifier,
//       builder: (BuildContext context, PlatformFile? value, Widget? child) {
//         return Stack(
//           alignment: AlignmentDirectional.center,
//           children: <Widget>[
//             Builder(
//               builder: (BuildContext context) {
//                 if (value != null) {
//                   return CircleAvatar(
//                     foregroundColor: Colors.black,
//                     radius: ResponsiveUtils.responsiveSize(
//                       context,
//                       mobile: 60,
//                       tablet: 10,
//                     ),
//                     backgroundImage: FileImage(File(value.path!)),
//                   );
//                 } else if (imageUrl.isNotEmpty) {
//                   return NetworkImageWidget(
//                     width: ResponsiveUtils.responsiveSize(
//                       context,
//                       mobile: 90,
//                       tablet: 112,
//                     ),
//                     height: ResponsiveUtils.responsiveSize(
//                       context,
//                       mobile: 90,
//                       tablet: 112,
//                     ),
//                     radius: 60,
//                     fit: BoxFit.cover,
//                     url: imageUrl,
//                   );
//                 } else {
//                   return Icon(
//                     Icons.account_circle_rounded,
//                     color: context.theme.primaryColor.withValues(alpha: 0.3),
//                     size: ResponsiveUtils.responsiveSize(
//                       context,
//                       mobile: 120,
//                       tablet: 112,
//                     ),
//                   );
//                 }
//               },
//             ),
//             Positioned.fill(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(60),
//                   gradient: LinearGradient(
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                     colors: <Color>[
//                       context.colorScheme.secondary.withValues(alpha: 0.6),
//                       context.colorScheme.secondary.withValues(alpha: 0.2),
//                     ],
//                     stops: const <double>[0.0, 1.0],
//                   ),
//                 ),
//               ),
//             ),
//             IconButton(
//               onPressed: () async {
//                 selectedImageNotifier.value = await pickImage();
//               },
//               icon: Icon(
//                 Icons.edit_outlined,
//                 size: 28,
//                 color: imageUrl.isEmpty && selectedImageNotifier.value == null
//                     ? context.theme.colorScheme.secondary
//                     : context.theme.colorScheme.surface,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> firstNameTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: firstNameController,
//       builder: (BuildContext context, String? firstNameValue, Widget? child) {
//         return TextInputWidget(
//           controller: firstNameTextEditingController,
//           keyboardType: TextInputType.name,
//           focusNode: firstNameFocusNode,
//           nextFocusNode: lastNameFocusNode,
//           hintText: LocaleKeys.firstName.tr(),
//           isEmpty: firstNameValue?.isEmpty ?? false,
//           onChanged: (String value) {
//             firstNameController.onTextChange(value);
//           },
//           validator: (String? value) => validateInput(
//             value,
//             fieldName: 'first_name',
//             externalErrors: externalErrors,
//             context,
//             <ValidationType>[ValidationType.requiredField],
//           ),
//         );
//       },
//     );
//   }

//   ValueListenableBuilder<String?> lastNameTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: lastNameController,
//       builder: (BuildContext context, String? lastNameValue, Widget? child) {
//         return TextInputWidget(
//           controller: lastNameTextEditingController,
//           keyboardType: TextInputType.name,
//           focusNode: lastNameFocusNode,
//           nextFocusNode: cityFocusNode,
//           hintText: LocaleKeys.lastName.tr(),
//           isEmpty: lastNameValue?.isEmpty ?? false,
//           onChanged: (String value) {
//             lastNameController.onTextChange(value);
//           },
//           validator: (String? value) => validateInput(
//             value,
//             fieldName: 'last_name',
//             externalErrors: externalErrors,
//             context,
//             <ValidationType>[ValidationType.requiredField],
//           ),
//         );
//       },
//     );
//   }

//   cityField() {
//     return SearchableDDL<CityResult>(
//       hintText: "",
//       //(LocaleKeys.city).tr(),
//       autoValidateMode: AutovalidateMode.onUserInteraction,
//       isEmpty: selectedCity == null,
//       selectedItem: selectedCity,
//       nextFocusNode: addressFocusNode,
//       validator: (CityResult? value) => validateInput(
//         value != null ? "v" : "",
//         fieldName: 'city',
//         externalErrors: externalErrors,
//         context,
//         <ValidationType>[ValidationType.requiredField],
//       ),
//       onChanged: (CityResult? value) {
//         setState(() {
//           selectedCity = value;
//         });
//       },
//       focusNode: cityFocusNode,
//       asyncItems: (String s, _) async {
//         final DioClient dioClient = DioClient();
//         final Response<dynamic> response = await dioClient.sendRequest(
//           RequestType.get,
//           EndPoint.cities,
//         );
//         final CitiesModel citySuccessResponseModel = CitiesModel.fromJson(
//           response.data as Map<String, dynamic>,
//         );
//         return citySuccessResponseModel.results;
//       },
//     );
//   }

//   ValueListenableBuilder<String?> addressTextField() {
//     return ValueListenableBuilder<String?>(
//       valueListenable: addressController,
//       builder: (BuildContext context, String? addressValue, Widget? child) {
//         return TextInputWidget(
//           controller: addressTextEditingController,
//           keyboardType: TextInputType.streetAddress,
//           focusNode: addressFocusNode,
//           nextFocusNode: phoneNumberFocusNode,
//           hintText: LocaleKeys.address.tr(),
//           isEmpty: addressValue?.isEmpty ?? false,
//           onChanged: (String value) {
//             addressController.onTextChange(value);
//           },
//         );
//       },
//     );
//   }

//   Directionality phoneNumberTextField() {
//     return Directionality(
//       textDirection: TextDirection.ltr,
//       child: ValueListenableBuilder<String?>(
//         valueListenable: phoneNumberController,
//         builder: (BuildContext context, String? value, Widget? child) {
//           return TextInputWidget(
//             controller: phoneNumberTextEditingController,
//             keyboardType: TextInputType.phone,
//             focusNode: phoneNumberFocusNode,
//             isEmpty: value?.isEmpty ?? false,
//             hintText: '+963 9xx xxxxxxx',
//             onChanged: phoneNumberController.onTextChange,
//             validator: (String? val) => validateInput(
//               val,
//               context,
//               fieldName: 'phone_number',
//               externalErrors: externalErrors,
//               <ValidationType>[
//                 ValidationType.requiredField,
//                 ValidationType.phone,
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   GlobalButton submitButton() {
//     return GlobalButton(
//       controller: globalButtonController,
//       focusNode: submitButtonFocusNode,
//       backgroundColor: context.colorScheme.primary,
//       height: 40,
//       onPressed: () {
//         if (externalErrors.isNotEmpty) {
//           externalErrors = <String, String>{};
//           formKey.currentState!.reset();
//         }
//         if (formKey.currentState!.validate()) {
//           _profileBloc.add(
//             ProfileEvent.updateProfile(
//               editProfileParams: EditProfileParams(
//                 image: selectedImageNotifier.value,
//                 firstName: firstNameTextEditingController.text,
//                 lastName: lastNameTextEditingController.text,
//                 cityId: selectedCity?.id ?? "",
//                 address: addressTextEditingController.text,
//                 phoneNumber: phoneNumberTextEditingController.text,
//                 email: _profileBloc.userData.email!,
//                 gender: 1,
//               ),
//             ),
//           );
//         }
//       },
//       child: Text(
//         LocaleKeys.save.tr(),
//         style: context.bodySmall?.copyWith(
//           color: Palette.white,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }

//   Column labelText(String text) {
//     return Column(
//       children: <Widget>[
//         Text(
//           context.tr(text),
//           style: context.titleSmall?.copyWith(
//             color: Palette.text,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: Dimensions.space8),
//       ],
//     );
//   }

//   @override
//   void dispose() {
//     firstNameTextEditingController.dispose();
//     firstNameFocusNode.dispose();
//     firstNameController.dispose();

//     lastNameTextEditingController.dispose();
//     lastNameFocusNode.dispose();
//     lastNameController.dispose();

//     addressTextEditingController.dispose();
//     addressFocusNode.dispose();
//     addressController.dispose();

//     globalButtonController.dispose();
//     submitButtonFocusNode.dispose();

//     cityFocusNode.dispose();

//     phoneNumberTextEditingController.dispose();
//     phoneNumberFocusNode.dispose();
//     phoneNumberController.dispose();

//     selectedImageNotifier.dispose();

//     super.dispose();
//   }
// }
