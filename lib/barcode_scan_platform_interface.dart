import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'barcode_scan_method_channel.dart';

abstract class BarcodeScanPlatform extends PlatformInterface {
  /// Constructs a BarcodeScanPlatform.
  BarcodeScanPlatform() : super(token: _token);

  static final Object _token = Object();

  static BarcodeScanPlatform _instance = MethodChannelBarcodeScan();

  /// The default instance of [BarcodeScanPlatform] to use.
  ///
  /// Defaults to [MethodChannelBarcodeScan].
  static BarcodeScanPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BarcodeScanPlatform] when
  /// they register themselves.
  static set instance(BarcodeScanPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
