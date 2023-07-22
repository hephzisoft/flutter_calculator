import 'package:calculator/customs_strings.dart';
import '../widgets/buttons.dart';

// import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

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
  String resultField = '0';
  String inputField = '';

  final List<String> buttons = [
    'C',
    '%',
    '⌫',
    '÷',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '=',
  ];

  bool isOperator(String value) {
    if (value == 'C' ||
        value == '%' ||
        value == '⌫' ||
        value == '÷' ||
        value == 'x' ||
        value == '-' ||
        value == '+') {
      return true;
    }
    return false;
  }

  void equalFunction() {
    var finalInput = inputField;
    finalInput = finalInput.replaceAll('x', '*');
    finalInput = finalInput.replaceAll('÷', '/');
    Parser p = Parser();
    Expression exp = p.parse(finalInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    
    resultField = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Calculator'),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        inputField,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        resultField,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  if (index == buttons.length - 1) {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          equalFunction();
                        });
                      },
                      color: equalToColor,
                      buttonText: buttons[index],
                    );
                  } else if (index == 0) {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          inputField = '';
                        });
                      },
                      color: Colors.red,
                      buttonText: buttons[index],
                    );
                  } else if (index == 2) {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          inputField =
                              inputField.substring(0, inputField.length - 1);
                        });
                      },
                      color: operatorsColor,
                      buttonText: buttons[index],
                    );
                  } else {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          inputField += buttons[index];
                        });
                      },
                      color: isOperator(buttons[index])
                          ? operatorsColor
                          : numbersColor,
                      buttonText: buttons[index],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
