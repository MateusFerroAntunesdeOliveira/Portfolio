import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../utils.dart';

export '../routes.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  String? _checkpointPage;
  dynamic _checkpointArgument;

  bool checkRoute(String page, [dynamic argument]) {
    final checks = [];
    for (var home in checks) if (home == page) return false;
    return true;
  }

  void setCheckpoint(String? page, [dynamic argument]) {
    _checkpointPage = page;
    _checkpointArgument = argument;
  }

  bool hasCheckpoint() => _checkpointPage != null;

  Future<dynamic> pushCheckpoint([bool replace = true]) {
    final p = _checkpointPage;
    final a = _checkpointArgument;
    setCheckpoint(null, null);
    if (replace) return pushReplacement(p!, arguments: a);
    return push(p!, a);
  }

  Future<dynamic> pushReplacement(String pageUrl, {dynamic arguments, dynamic result}) {
    if (checkRoute(pageUrl, arguments)) {
      return navigatorKey.currentState!
          .pushReplacementNamed(pageUrl, arguments: arguments, result: result);
    }
    return pushAsFirst(pageUrl, arguments: arguments);
  }

  Future<dynamic> push(String pageUrl, [dynamic arguments]) {
    if (checkRoute(pageUrl, arguments)) {
      return navigatorKey.currentState!.pushNamed(pageUrl, arguments: arguments);
    }
    return pushAsFirst(pageUrl, arguments: arguments);
  }

  void pop([dynamic result]) {
    log.i("<Router> Pop Page");
    if (Get.isSnackbarOpen ?? false) {
      navigatorKey.currentState!.pop(result);
    }
    if (canPop()) {
      navigatorKey.currentState!.pop(result);
    } else {
      navigatorKey.currentState!.pushReplacementNamed("/", result: result);
    }
  }

  void closeSnack() {
    if (Get.isSnackbarOpen ?? false) navigatorKey.currentState!.pop();
  }

  Future<dynamic> pushAsFirst(String pageUrl, {dynamic arguments}) async {
    while (canPop()) navigatorKey.currentState!.pop();
    if (Get.currentRoute == pageUrl && Get.arguments == arguments) return null;
    return await navigatorKey.currentState!.pushReplacementNamed(pageUrl, arguments: arguments);
  }

  bool canPop() => navigatorKey.currentState!.canPop();
}
