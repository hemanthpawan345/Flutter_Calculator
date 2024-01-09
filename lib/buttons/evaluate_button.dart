import 'package:flutter/material.dart';

class EvalButton extends StatefulWidget {
  const EvalButton({super.key, required this.value, required this.onAction});
  final String value;
  final Function() onAction;
  @override
  State<StatefulWidget> createState() {
    return _EvalButtonState();
  }
}

class _EvalButtonState extends State<EvalButton> {
  void _press() => widget.onAction();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: ElevatedButton(
        onPressed: () => _press(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
        ),
        child: Text(
          widget.value,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
