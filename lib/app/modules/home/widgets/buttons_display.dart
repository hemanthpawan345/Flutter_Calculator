import 'package:flutter/material.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons/operand_button.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons/clear_button.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons/evaluate_button.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons/operator_button.dart';
import 'package:myapp_4/app/modules/home/widgets/buttons/backspace_button.dart';

class ButtonDisplay extends StatelessWidget {
  const ButtonDisplay({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ClearButton(value: 'AC'),
                const Spacer(),
                OperatorButton(value: '('),
                const Spacer(),
                OperatorButton(value: ')'),
                const Spacer(),
                OperatorButton(value: '/'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '1'),
                const Spacer(),
                OperandButton(value: '2'),
                const Spacer(),
                OperandButton(value: '3'),
                const Spacer(),
                OperatorButton(value: '*'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '4'),
                const Spacer(),
                OperandButton(value: '5'),
                const Spacer(),
                OperandButton(value: '6'),
                const Spacer(),
                OperatorButton(value: '-'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '7'),
                const Spacer(),
                OperandButton(value: '8'),
                const Spacer(),
                OperandButton(value: '9'),
                const Spacer(),
                OperatorButton(value: '+'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OperandButton(value: '.'),
                const Spacer(),
                OperandButton(value: '0'),
                const Spacer(),
                BackspaceButton(),
                const Spacer(),
                EvalButton(value: '='),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
