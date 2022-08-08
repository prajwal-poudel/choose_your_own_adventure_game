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
  List<Map<String, String>> data = [
    {
      "question": "Your friend is in trouble, What would you like to do ?",
      "answer1": "Help Him",
      "answer2": "Run Away"
    },
    {
      "question": "You got yourself in trouble",
      "answer1": "Ask help from same friend",
      "answer2": "Don't ask any help"
    },
    {
      "question": "did he help you",
      "answer1": "Yes hi did",
      "answer2": "no he didn't"
    },
  ];
  int index = 0;
  List<String> answers = [];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/716398/pexels-photo-716398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                fit: BoxFit.cover)),
        child: index == data.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: answers.asMap().entries.map((e) {
                      return Text(
                        e.value,
                        style: TextStyle(color: Colors.white),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                          answers.clear();
                        });
                      },
                      child: Text("Restart Game!!"))
                ],
              )
            : Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    alignment: Alignment.center,
                    width: width,
                    height: height * 0.7,
                    // color: Colors.red,
                    child: Text(
                      data[index]["question"]!,
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.06),
                    ),
                  ),
                  Container(
                    width: width,
                    height: height * 0.3,
                    // color: Colors.pink,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            print(data[0]["answer1"]);
                            if (index <= data.length) {
                              answers.add(data[index]["answer1"]!);
                              setState(() {
                                index++;
                              });
                            } else {
                              print(answers);

                              setState(() {
                                index = 0;
                              });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            height: height * 0.1,
                            width: width,
                            color: Colors.blue,
                            child: Text(
                              data[index]["answer1"]!,
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.045),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // print(data[index]["answer2"]);
                            if (index < data.length) {
                              answers.add(data[index]["answer2"]!);

                              setState(() {
                                index++;
                              });
                            } else {
                              print(answers);

                              setState(() {
                                index = 0;
                              });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            height: height * 0.1,
                            width: width,
                            color: Colors.purple,
                            child: Text(
                              data[index]["answer2"]!,
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.045),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
