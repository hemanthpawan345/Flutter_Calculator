import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
    required this.exp,
  });
  final String exp;
  @override
  State<StatefulWidget> createState() {
    return _ResultPageState();
  }
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.37,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          widget.exp,
          style: const TextStyle(
            fontSize: 55,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
