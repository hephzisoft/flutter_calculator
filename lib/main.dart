import 'package:calculator/customs_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/input_buttons.dart';

void main() {
  runApp(MaterialApp(
    title: 'Calculator',
    home: const Calculator(),
    theme: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
    ),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '0';
  String input = '2+2';
  void _showClicked(String clickedInput) {
   if (clickedInput == '00'|| clickedInput == '0'){
     input;
   }
  }

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
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            height: (MediaQuery.of(context).size.height -
                    appBar.preferredSize.height) *
                0.33,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child:
                        Text(input, style: GoogleFonts.poppins(fontSize: 50))),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  child: Text(result, style: GoogleFonts.poppins(fontSize: 35)),
                ),
              ],
            ),
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
                      identifier: 'ac',
                      child: const FaIcon(FontAwesomeIcons.c),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: '%',
                      child: const FaIcon(FontAwesomeIcons.percent),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: 'c',
                      child: const Icon(
                        Icons.backspace,
                        size: 16,
                      ),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: '/',
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
                      identifier: '7',
                      child: const FaIcon(FontAwesomeIcons.seven),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '8',
                      child: const FaIcon(FontAwesomeIcons.eight),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '9',
                      child: const FaIcon(FontAwesomeIcons.nine),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: 'x',
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
                      identifier: '4',
                      child: const FaIcon(FontAwesomeIcons.four),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '5',
                      child: const FaIcon(FontAwesomeIcons.five),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '6',
                      child: const FaIcon(FontAwesomeIcons.six),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: '-',
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
                      identifier: '1',
                      child: const FaIcon(FontAwesomeIcons.one),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '2',
                      child: const FaIcon(FontAwesomeIcons.two),
                    ),
                    InputButtons(
                      bgColor: numbersColor,
                      clickedInput: _showClicked,
                      identifier: '3',
                      child: const FaIcon(FontAwesomeIcons.three),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: '+',
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
                      identifier: '00',
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
                      identifier: '0',
                      child: const FaIcon(FontAwesomeIcons.zero),
                    ),
                    InputButtons(
                      bgColor: operatorsColor,
                      clickedInput: _showClicked,
                      identifier: '.',
                      child:  const Icon(CupertinoIcons.stop_fill, size: 16,),
                      // child:  Text('.', textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 30),),
                    ),
                    InputButtons(
                      bgColor: equalToColor,
                      clickedInput: _showClicked,
                      identifier: '=',
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
