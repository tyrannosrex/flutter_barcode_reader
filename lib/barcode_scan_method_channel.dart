import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'barcode_scan_platform_interface.dart';

/// An implementation of [BarcodeScanPlatform] that uses method channels.
class MethodChannelBarcodeScan extends BarcodeScanPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('barcode_scan');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
