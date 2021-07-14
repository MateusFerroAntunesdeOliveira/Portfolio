import 'package:flutter/material.dart';

import 'desktopNavBar.widget.dart';
import 'mobileNavBar.widget.dart';

class CustomNavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return DesktopNavBar();
          } else {
            return MobileNavBar();
          }
        },
      ),
    );
  }
}

