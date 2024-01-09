import 'package:flutter/material.dart';
import 'package:myapp_4/buttons_display.dart';
import 'package:myapp_4/result_box.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CalculatorPageState();
  }
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _expression = '';

  void _expr(String char) {
    setState(() {
      _expression += char;
    });
  }

  void _clear() {
    setState(() {
      _expression = '';
    });
  }

  void _eval() {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    double val = exp.evaluate(EvaluationType.REAL, ContextModel());
    setState(() {
      if (val % 1 == 0) {
        _expression = val.toInt().toString();
      } else {
        _expression = val.toStringAsFixed(2);
      }
    });
  }

  void _back() {
    setState(() {
      _expression = _expression.substring(0, _expression.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResultPage(
              exp: _expression,
            ),
            ButtonDisplay(
              expr: _expr,
              clear: _clear,
              eval: _eval,
              back: _back,
            ),
          ],
        ),
      ),
    );
  }
}
