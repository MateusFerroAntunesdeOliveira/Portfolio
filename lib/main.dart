import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get_core/src/get_main.dart';

import 'src/app.dart';
import 'src/utils.dart';
import 'src/services/navigation.service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  
  Get.put(NavigationService());

  runApp(MyApp());
}
