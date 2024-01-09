import 'package:flutter/material.dart';

class OperandButton extends StatefulWidget {
  const OperandButton({super.key, required this.value, required this.onAppend});
  final String value;
  final Function(String char) onAppend;
  @override
  State<StatefulWidget> createState() {
    return _OperandButtonState();
  }
}

class _OperandButtonState extends State<OperandButton> {
  void _add() => widget.onAppend(widget.value);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: ElevatedButton(
        onPressed: () => _add(),
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
