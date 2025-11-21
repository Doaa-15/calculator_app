import 'package:flutter/material.dart';
import 'dart:math';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  num result = 0;
  int first_number = 0;
  int second_number = 0;
  String operation = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.green, width: 20),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.all(5)),
                  // button 1
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text('$first_number'),
                  ),
                  // operation button
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      operation,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  // button 2
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text('$second_number'),
                  ),
                  // equal button
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  // result button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text('$result'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // row numbers
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(20)),
                Text(
                  "The First Number",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 70),
                Text(
                  "The Second Number",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            ///row
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(15)),
                //first number
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      first_number++;
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      first_number--;
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ),
                SizedBox(width: 50),

                ///second number
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      second_number++;
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      second_number--;
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            // row operation 1,2
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(15)),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first_number + second_number;
                      operation = "+";
                    });
                  },
                  child: Text(
                    "+  Addition",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                /////////////////////
                SizedBox(width: 60),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first_number - second_number;
                      operation = "-";
                    });
                  },
                  child: Text(
                    "-  Subtraction",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            // row operation 3,4
            SizedBox(height: 20),
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(15)),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first_number * second_number;
                      operation = "*";
                    });
                  },
                  child: Text(
                    "*  Multiplication",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                ////////////////////
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first_number ~/ second_number;
                      operation = "/";
                    });
                  },
                  child: Text(
                    "/  division",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            //row operation 5,6
            SizedBox(height: 20),

            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(15)),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = pow(first_number, second_number);
                      operation = "^";
                    });
                  },
                  child: Text(
                    "^  Exponentiation",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                ////////////////////////////////
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first_number % second_number;
                      operation = "%";
                    });
                  },
                  child: Text(
                    "%  Modulus",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            ///////////////
            SizedBox(height: 20),

            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 60,

              child: Column(
                children: [
                   TextButton(
                onPressed: () {
                setState(() {
                    first_number = 0;
                  second_number = 0;
                  result = 0;
                  operation = " ";
                });
                },
                child: Text("Reset all", style: TextStyle(color: Colors.white)),
              ),
                     Text(operation,style: TextStyle(fontSize: 40,color: Colors.white),),
               
                         
              
                ],
              )
            
            ),
          ],
        ),
      ),
    );
  }
}
