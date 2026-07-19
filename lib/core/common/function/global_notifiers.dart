import 'package:flutter/material.dart';

class GlobalNotifiers {
  static ValueNotifier<bool> profileNotifier = ValueNotifier<bool>(false);
  static ValueNotifier<bool> favouriteNotifier = ValueNotifier<bool>(false);
  static ValueNotifier<bool> notificationNotifier = ValueNotifier<bool>(false);
  static ValueNotifier<bool> orderNotifier = ValueNotifier<bool>(false);
}
