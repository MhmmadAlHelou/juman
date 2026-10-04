import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

mixin ResendTimerMixin<S> on BlocBase<S> {
  final ValueNotifier<int> remainingSeconds = ValueNotifier<int>(0);
  Timer? _timer;

  void startResendTimer([int seconds = 60]) {
    _timer?.cancel();
    remainingSeconds.value = seconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (remainingSeconds.value <= 1) {
        t.cancel();
      }
      remainingSeconds.value--;
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    remainingSeconds.dispose();
    return super.close();
  }
}
