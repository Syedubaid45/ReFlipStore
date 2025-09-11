import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';

class DeviceFrameWrapper extends StatelessWidget {
  final Widget child;

  const DeviceFrameWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: child,
    );
  }
}
