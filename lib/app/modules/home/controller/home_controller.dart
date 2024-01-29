import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeController extends GetxController {
  String expression = '';

  void append(String value) {
    expression += value;
    update();
  }

  void clear() {
    expression = '';
    update();
  }

  void evaluate() {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    double val = exp.evaluate(EvaluationType.REAL, ContextModel());
    if (val % 1 == 0) {
      expression = val.toInt().toString();
    } else {
      expression = val.toStringAsFixed(2);
    }
    update();
  }

  void backSpace() {
    expression = expression.substring(0, expression.length - 1);
    update();
  }
}
