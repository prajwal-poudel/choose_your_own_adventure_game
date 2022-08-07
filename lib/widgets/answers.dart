import 'package:flutter/material.dart';

Widget returnAnswer(BuildContext context, double height, double width) {
  return Container(
    width: width,
    height: height * 0.3,
    // color: Colors.pink,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            print("Answer 1");
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: width * 0.03),
            height: height * 0.1,
            width: width,
            color: Colors.blue,
            child: Text(
              "Answer1",
              style: TextStyle(color: Colors.white, fontSize: width * 0.045),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Answer 2");
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: width * 0.03),
            height: height * 0.1,
            width: width,
            color: Colors.purple,
            child: Text(
              "Answer2",
              style: TextStyle(color: Colors.white, fontSize: width * 0.045),
            ),
          ),
        )
      ],
    ),
  );
}
