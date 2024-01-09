import 'package:flutter/material.dart';

class BackspaceButton extends StatefulWidget {
  const BackspaceButton({super.key, required this.onAction});
  final Function() onAction;
  @override
  State<StatefulWidget> createState() {
    return _BackspaceButtonState();
  }
}

class _BackspaceButtonState extends State<BackspaceButton> {
  void _add() => widget.onAction();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: IconButton(
        icon: const Icon(Icons.backspace),
        onPressed: () => _add(),
        color: Colors.black,
        style: IconButton.styleFrom(
          backgroundColor: Colors.grey[600],
        ),
      ),
    );
  }
}
