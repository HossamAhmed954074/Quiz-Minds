import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityHelper {
  static final Connectivity _connectivity = Connectivity();

  static Future<bool> hasInternetConnection() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)) {
      return true;
    }
    return false;
  }

  static Future<bool> hasRealInternetConnection() async {
    try {
      final lookup = await InternetAddress.lookup('google.com');
      return lookup.isNotEmpty && lookup.first.rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
