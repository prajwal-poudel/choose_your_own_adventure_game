import 'package:flutter/material.dart';

Widget returnQuestion(BuildContext context, double height, double width) {
  return Container(
    alignment: Alignment.center,
    width: width,
    height: height * 0.7,
    // color: Colors.red,
    child: Text(
      "Scenario......",
      style: TextStyle(color: Colors.white, fontSize: width * 0.06),
    ),
  );
}
