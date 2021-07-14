import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/utils.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:myownwebsite/src/services/navigation.service.dart';

import 'src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  
  Get.put(NavigationService());

  runApp(MyApp());
}