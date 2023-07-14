import 'package:calculator/customs_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/input_buttons.dart';

void main() {
  runApp(MaterialApp(
    title: 'Calculator',
    home: const Calculator(),
    theme: ThemeData(
      useMaterial3: true,z
      brightness: Brightness.dark,
    ),
    themeMode: ThemeMode.dark,
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  void _showClicked() {}

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Calculator'),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height) *
                0.33,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height) *
                0.6,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.c),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.percent),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        Icons.backspace,
                        size: 16,
                      ),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        CupertinoIcons.divide,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.seven),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.eight),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.nine),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        CupertinoIcons.multiply,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.four),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.five),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.six),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.one),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.two),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.three),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        CupertinoIcons.add,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const Text(
                        '00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      child: const FaIcon(FontAwesomeIcons.zero),
                    ),
                    InputButtons(
                        bgColor: operatorsColor,
                        clickedInput: _showClicked,
                        child: const Icon(Icons.keyboard_command_key),),
                    InputButtons(
                      bgColor: equalToColor,
                      clickedInput: _showClicked,
                      child: const Icon(
                        CupertinoIcons.equal,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
