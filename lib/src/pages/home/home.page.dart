import 'package:flutter/material.dart';

import '../../widgets/customNavBar.widget.dart';
import '../../services/navigation.service.dart';
import '../../utils.dart';

class HomePage extends StatelessWidget {
  final nav = Get.find<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [MfaoColors.lightDark, MfaoColors.lightGrey],
          ),
        ),
        child: Column(
          children: [
            CustomNavBarWidget(),
          ],
        ),
      ),
    );
  }
}
