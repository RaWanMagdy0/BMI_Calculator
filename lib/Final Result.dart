import 'package:flutter/material.dart';

class Final_Result extends StatelessWidget {
  Final_Result(
      {super.key,
      required this.age,
      required this.result,
      required this.isMale});

  double result;
  int age;
  final bool isMale;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'obese';
    } else if (result > 25 && result < 30)
      resultText = 'overweight';
    else if (result >= 18.5 && result <= 24.9)
      resultText = 'Normal';
    else
      resultText = 'thin';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Final Result',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'Gender : ${isMale == true ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 90,
              ),
              Text('age : ${age} ',
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(
                height: 90,
              ),
              Text(
                'Result : ${result.toStringAsFixed(1)}',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'Healthness : $resultPhrase',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
