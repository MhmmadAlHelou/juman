import '../../../../core/core.dart';

class EditProfileParams {
  const EditProfileParams({
    required this.lastName,
    required this.firstName,
    required this.cityId,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.gender,
    required this.image,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String cityId;
  final String address;
  final int gender;

  final PlatformFile? image;

  FormData toFormData() {
    final FormData formData = FormData.fromMap(<String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'city': cityId,
      'email': email,
      'phone_number': phoneNumber,
      'gender': gender,
      'address': address,
    });
    if (image != null) {
      final MultipartFile imageBytes = MultipartFile.fromBytes(
        Uint8List.fromList(image?.bytes ?? <int>[]),
        filename: image?.name,
      );
      formData.files.add(MapEntry<String, MultipartFile>('image', imageBytes));
    }

    return formData;
  }
}
