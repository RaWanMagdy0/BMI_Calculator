import 'dart:math';

import 'package:bmi_calculator/Final%20Result.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool isMale = false;
  double height = 170;
  int age = 20;
  int weight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: isMale ? Colors.teal : Colors.blueGrey),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 60,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: isMale ? Colors.blueGrey : Colors.teal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 60,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'FeMale',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blueGrey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Height',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(color: Colors.black)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  height.toStringAsFixed(1),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(fontSize: 40),
                                ),
                                Text('cm',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.black)),
                              ],
                            ),
                            Slider(
                              activeColor: Colors.teal,
                              inactiveColor: Colors.white,
                              min: 140,
                              max: 220,
                              value: height,
                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blueGrey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$weight',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 40),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  mini: true,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                  ),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '$age',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontSize: 40),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    mini: true,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(
                                      Icons.minimize_rounded,
                                      color: Colors.white,
                                    ),
                                    mini: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                color: Colors.teal,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 15,
                child: TextButton(
                    onPressed: () {
                      var result = weight / pow(height / 100, 2);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Final_Result(
                            age: age, result: result, isMale: isMale);
                      }));
                    },
                    child: Text(
                      'Calculate',
                      style: Theme.of(context).textTheme.bodySmall,
                    )))
          ],
        ),
      ),
    );
  }
}
