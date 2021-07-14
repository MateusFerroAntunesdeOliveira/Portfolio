import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'services/navigation.service.dart';
import 'utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: GetMaterialApp(
          title: "My Portfolio",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: MfaoColors.lightDark,
            accentColor: MfaoColors.white,
            fontFamily: "Montserrat",
          ),
          initialRoute: MfaoRoutes.Home,
          onGenerateRoute: onGenerateRoute,
          navigatorKey: Get.find<NavigationService>().navigatorKey,
          localizationsDelegates: [
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}
