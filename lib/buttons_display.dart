import 'package:flutter/material.dart';
import 'package:myapp_4/buttons/operand_button.dart';
import 'package:myapp_4/buttons/clear_button.dart';
import 'package:myapp_4/buttons/evaluate_button.dart';
import 'package:myapp_4/buttons/operator_button.dart';
import 'package:myapp_4/buttons/backspace_button.dart';

class ButtonDisplay extends StatefulWidget {
  const ButtonDisplay({
    super.key,
    required this.expr,
    required this.clear,
    required this.eval,
    required this.back,
  });
  final Function(String char) expr;
  final Function() clear;
  final Function() eval;
  final Function() back;
  @override
  State<StatefulWidget> createState() {
    return _ButtonDisplayState();
  }
}

class _ButtonDisplayState extends State<ButtonDisplay> {
  void _appendValue(String char) {
    widget.expr(char);
  }

  void _clearExp() {
    widget.clear();
  }

  void _evalExp() {
    widget.eval();
  }

  void _backExp() {
    widget.back();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ClearButton(value: 'AC', onAction: _clearExp),
                const Spacer(),
                OperatorButton(value: '(', onAppend: _appendValue),
                const Spacer(),
                OperatorButton(value: ')', onAppend: _appendValue),
                const Spacer(),
                OperatorButton(value: '/', onAppend: _appendValue),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '1', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '2', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '3', onAppend: _appendValue),
                const Spacer(),
                OperatorButton(value: '*', onAppend: _appendValue),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '4', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '5', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '6', onAppend: _appendValue),
                const Spacer(),
                OperatorButton(value: '-', onAppend: _appendValue),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '7', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '8', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '9', onAppend: _appendValue),
                const Spacer(),
                OperatorButton(value: '+', onAppend: _appendValue),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '.', onAppend: _appendValue),
                const Spacer(),
                OperandButton(value: '0', onAppend: _appendValue),
                const Spacer(),
                BackspaceButton(onAction: _backExp),
                const Spacer(),
                EvalButton(value: '=', onAction: _evalExp),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
