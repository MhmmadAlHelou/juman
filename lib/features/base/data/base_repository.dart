import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

import '../../../core/core.dart';

class BaseRemoteDataSource {
  BaseRemoteDataSource(this._dioClient);

  final DioClient _dioClient;

  Future<void> saveFcmToken(String fcmToken) async {
    String deviceId = await getDeviceId();

    await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.updateFcm,
      data: <String, dynamic>{
        "registration_id": fcmToken,
        'device_id': deviceId,
        'type': Platform.operatingSystem,
        'role': 2,
      },
    );
  }

  Future<void> saveFcmUnAuthToken(String fcmToken) async {
    String deviceId = await getDeviceId();

    await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.updateForUnAuthFcm,
      data: <String, dynamic>{
        "registration_id": fcmToken,
        'device_id': deviceId,
        'type': Platform.operatingSystem,
        'role': 2,
      },
    );
  }

  Future<String> getDeviceId() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String deviceId = "";
    if (Platform.isAndroid) {
      AndroidDeviceInfo info = (await deviceInfoPlugin.androidInfo);
      deviceId = info.id;
    } else {
      deviceId = (await deviceInfoPlugin.iosInfo).identifierForVendor ?? "";
    }

    return deviceId;
  }
}
