import 'package:flutter/material.dart';

class OperatorButton extends StatefulWidget {
  const OperatorButton({super.key, required this.value, required this.onAppend});
  final String value;
  final Function(String char) onAppend;
  @override
  State<StatefulWidget> createState() {
    return _OperatorButtonState();
  }
}

class _OperatorButtonState extends State<OperatorButton> {
  void _add() => widget.onAppend(widget.value);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: ElevatedButton(
        onPressed: () => _add(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
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
