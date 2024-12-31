import 'package:calculator_app/widget/Constant.dart';
import 'package:calculator_app/widget/button.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    userInput.toString(),
                    style: heading2TextStyle,
                  ),
                  Text(
                    answer.toString(),
                    style: heading2TextStyle,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              title: 'AC',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput = '';
                                answer = '';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: 'Del',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput = userInput.substring(
                                    0, userInput.length - 1);
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '%',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput += '%';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '/',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput += '/';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              title: '7',
                              onPress: () {
                                userInput += '7';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '8',
                              onPress: () {
                                userInput += '8';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '9',
                              onPress: () {
                                userInput += '9';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: 'x',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput += 'x';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              title: '4',
                              onPress: () {
                                userInput += '4';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '5',
                              onPress: () {
                                userInput += '5';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '6',
                              onPress: () {
                                userInput += '6';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '-',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput += '-';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              title: '1',
                              onPress: () {
                                userInput += '1';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '2',
                              onPress: () {
                                userInput += '2';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '3',
                              onPress: () {
                                userInput += '3';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '+',
                              color: Colors.orangeAccent,
                              onPress: () {
                                userInput += '+';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              title: '+/-',
                              onPress: () {
                                userInput += '+/-';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '0',
                              onPress: () {
                                userInput += '0';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '.',
                              onPress: () {
                                userInput += '.';
                                setState(() {});
                              },
                            ),
                            Button(
                              title: '=',
                              color: Colors.orangeAccent,
                              onPress: () {
                                equalPress();
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  void equalPress() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();
    double evel = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = evel.toString();
  }
}
