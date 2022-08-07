import 'package:choose_your_own_adventure/widgets/answers.dart';
import 'package:choose_your_own_adventure/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/716398/pexels-photo-716398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            returnQuestion(context, height, width),
            returnAnswer(context, height, width)
          ],
        ),
      ),
    );
  }
}
