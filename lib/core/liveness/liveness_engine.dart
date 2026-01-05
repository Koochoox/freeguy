import 'dart:async';
import 'package:flutter/material.dart';

///
/// LivenessEngine
/// Global system pulse for Freeguy LIFE_OS
///
class LivenessEngine {
  static final ValueNotifier<double> pulse =
      ValueNotifier<double>(1.0);

  static Timer? _timer;
  static bool _active = false;

  /// Start background pulse
  static void start() {
    if (_active) return;
    _active = true;

    double direction = 1;

    _timer = Timer.periodic(
      const Duration(milliseconds: 900),
      (_) {
        if (pulse.value >= 1.06) direction = -1;
        if (pulse.value <= 0.94) direction = 1;

        pulse.value += direction * 0.01;
      },
    );
  }

  /// Trigger stronger pulse (events)
  static void nudge({double intensity = 1.15}) {
    pulse.value = intensity;
    Future.delayed(
      const Duration(milliseconds: 400),
      () => pulse.value = 1.0,
    );
  }

  /// Stop engine (never in prod)
  static void stop() {
    _timer?.cancel();
    _active = false;
  }
}
