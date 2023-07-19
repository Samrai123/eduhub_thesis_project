import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text('Progress',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
            backgroundColor: Colors.deepPurple[100]),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Business',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              center: Text(
                '10%',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              animation: true,
              animationDuration: 1000,
              lineHeight: 20,
              percent: 0.1,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Development',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              center: Text(
                '40%',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              animation: true,
              animationDuration: 1000,
              lineHeight: 20,
              percent: 0.4,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
            ),
          ]),
        ));
  }
}
