import 'package:flutter/material.dart';

class ClearButton extends StatefulWidget {
  const ClearButton({super.key, required this.value, required this.onAction});
  final String value;
  final Function() onAction;
  @override
  State<StatefulWidget> createState() {
    return _ClearButtonState();
  }
}

class _ClearButtonState extends State<ClearButton> {
  void _press() => widget.onAction();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: ElevatedButton(
        onPressed: () => _press(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        child: Text(
          widget.value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
