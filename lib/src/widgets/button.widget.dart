import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 2),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                    width: 48,
                    height: 48,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Align(alignment: Alignment.center, child: Icon(Icons.settings))),
                Expanded(
                  child: Center(
                    child: Text("teste"),
                  ),
                ),
              ],
            ),
            SizedBox.expand(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(onTap: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
