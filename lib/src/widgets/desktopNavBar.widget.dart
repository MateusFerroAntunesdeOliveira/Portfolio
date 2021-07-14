import 'package:flutter/material.dart';

import '../utils.dart';

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Mateus Ferro Antunes de Oliveira",
              style: MfaoTextStyles.title.withColor(MfaoColors.dark),
            ),
            Row(
              children: [
                //   SizedBox(width: 32),
                //   Text("Home", style: MfaoTextStyles.subtitle1.withColor(MfaoColors.dark)),
                //   SizedBox(width: 32),
                //   Text("About Us", style: MfaoTextStyles.subtitle1.withColor(MfaoColors.dark)),
                //   SizedBox(width: 32),
                //   Text("Portfolio", style: MfaoTextStyles.subtitle1.withColor(MfaoColors.dark)),
                //   SizedBox(width: 32),
                Container(
                  width: 200,
                  child: ElevatedButton(
                    style: BasicButtonStyle(
                      backgroundColor: MfaoColors.lightDark,
                      shadowColor: MfaoColors.dark,
                      elevation: 2,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Home",
                      style: MfaoTextStyles.subtitle1.withColor(MfaoColors.dark),
                    ),
                  ),
                ),
                SizedBox(width: 32),
              ],
            )
          ],
        ),
      ),
    );
  }
}
