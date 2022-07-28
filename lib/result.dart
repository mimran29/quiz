import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'Unlucky';
    } else if (resultScore <= 12) {
      resultText = 'Almost there go redeem your 1 small size free drink';
    } else if (resultScore <= 16) {
      resultText = '50% discount';
    } else {
      resultText = '1 Free meals !!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
